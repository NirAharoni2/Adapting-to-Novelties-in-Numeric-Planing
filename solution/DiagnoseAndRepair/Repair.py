from collections import defaultdict, Counter
from sklearn.metrics import r2_score
from sklearn.linear_model import LinearRegression
import numpy as np

from itertools import combinations_with_replacement

from sympy.strategies.core import switch

from solution.Utilities.config import Config
from solution.Utilities.parsedModel import Parse_Model
from pysr import PySRRegressor

def filter_valid_predicates(action, predicate_dict: dict[tuple, int]) -> dict[tuple, int]:
    """
    Filters predicates so that only those whose arguments are part of the action are kept.

    Args:
        action (Action)
        predicate_dict (dict): Dictionary of predicates.

    Returns:
        dict: Filtered dictionary of predicates that are relevant to the given action.
    """
    filtered = {}

    for key, value in predicate_dict.items():
        if len(key) == 1:
            filtered[key] = value
            continue
        pred_args_list = key[1:]
        if all(arg in action.groundedParameters for arg in pred_args_list):
            filtered[key] = value

    return filtered


def nest_multiplication(terms):
    """
    Recursively nests multiplication: a * b * c -> ('*', a, ('*', b, c)).

    Args:
        terms (iterable): Terms to multiply.

    Returns:
        nested expression (tuple or element): Nested multiplication structure.
    """
    terms = list(terms)
    if len(terms) == 1:
        return terms[0]
    elif len(terms) == 2:
        return ('*', terms[0], terms[1])
    else:
        return ('*', terms[0], nest_multiplication(terms[1:]))


def generate_nested_combinations(term_dict, degree):
    """
    Generates nested monomial combinations of terms up to a specified degree.

    Args:
        term_dict (dict): Input terms and their values.
        degree (int): Maximum degree of monomials to generate.

    Returns:
        dict: Keys as nested monomials, values as evaluated products.
    """
    result = {}
    keys = list(term_dict.keys())

    for d in range(1, degree + 1):
        for combo in combinations_with_replacement(keys, d):
            counter = Counter(combo)
            value = 1.0
            for key, count in counter.items():
                value *= term_dict[key] ** count
            nested_key = nest_multiplication(combo)
            result[nested_key] = value

    return result

class Action:
    def __init__(self, fullAction):
        self.fullAction = fullAction
        self.name = fullAction[0]
        self.groundedParameters = fullAction[1:]


class Repair:
    """
    Handles domain repair by learning new models for action effects using regression.

    Attributes:
        data (defaultdict): Stores observed transitions for each action.
        parsed_model (Parse_Model): The parsed domain model.
    """

    def __init__(self):
        self.data = defaultdict(list)
        self.addedParameters = defaultdict(list)
        self.parsed_model = None


    def mainRepair(self, repairId, LastObservation, fullAction, newObservation, different_keys):
        action = Action(fullAction)
        self.addMissingParamsToAction(different_keys, action)
        # Optionally reuse previously detected keys
        differentKeysLifted = self.getDifferentKeys(action, different_keys)
        LastObservationFluents = LastObservation["fluents"]
        newObservationFluents = newObservation["fluents"]
        repairMethod = lambda: ()
        # Select the repair strategy based on the repair_id
        # rel variables
        if repairId == 1:
            repairMethod = self.repair_action_rel_vars
        # all variabels
        elif repairId == 2:
            repairMethod = self.repair_action_all_vars
        # all monomials
        elif repairId == 3:
            repairMethod = self.repair_action_all_monomials
        # adaptive
        elif repairId == 4:
            repairMethod = self.repair_action_adaptive
        # symbolic
        elif repairId == 5:
            repairMethod = self.repair_action_all_vars_symbolic
        # adaptive upgraded
        elif repairId == 6:
            repairMethod = self.repair_action_adaptive_upgraded
        repairMethod(LastObservationFluents, action, newObservationFluents, differentKeysLifted)
        return False


    def initialize(self):
        """
        Initializes and parses the domain model.
        """
        self.parsed_model = Parse_Model()

    def repair_action_rel_vars(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Repairs action by learning a model for only the changed fluents based on relevant state variables.
        """
        x1 = self.generalize_facts(LastObservationFluents, action)
        x1 = {k: x1[k] for k in differentKeysLifted if k in x1}

        y2 = self.generalize_facts(newObservationFluents, action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])
        results = self.multi_output_linear_regression(self.data[action.name])
        self.update_model(action.name, results)


    def repair_action_all_vars(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Learns models using all valid action-related variables.
        """

        x1 = filter_valid_predicates(action, LastObservationFluents)
        x1 = self.generalize_facts(x1, action)

        x2 = filter_valid_predicates(action, newObservationFluents)
        y2 = self.generalize_facts(x2, action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])
        results = self.multi_output_linear_regression(self.data[action.name])
        self.update_model(action.name, results)

    def repair_action_all_vars_symbolic(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Learns models using all valid action-related variables.
        """

        x1 = filter_valid_predicates(action, LastObservationFluents)
        x1 = self.generalize_facts(x1, action)

        x2 = filter_valid_predicates(action, newObservationFluents)
        y2 = self.generalize_facts(x2, action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])
        results = self.multi_output_symbolic(self.data[action.name])
        self.update_model(action.name, results)

    def repair_action_adaptive(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Tries multiple regression forms (basic, full, monomials) and picks the one with highest R² score.
        """

        x1 = self.generalize_facts(filter_valid_predicates(action, LastObservationFluents), action)
        y2 = self.generalize_facts(filter_valid_predicates(action, newObservationFluents), action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])

        unique_states = {
            tuple(tuple(sorted(d.items())) for d in state)
            for state in self.data[action.name]
        }

        if len(unique_states) >= 2:
            data1 = [[y, {k: x[k] for k in y.keys() if k in x}] for y, x in self.data[action.name]]
            data2 = self.data[action.name]
            data3 = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]

            results = self.multi_output_linear_regression_for_adaptive(action.name, [data1, data2, data3])
            self.update_model(action.name, results)

    def repair_action_adaptive_upgraded(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Tries multiple regression forms (basic, full, monomials) and picks the one with highest R² score.
        """


        x1 = self.generalize_facts(LastObservationFluents, action)
        y2 = self.generalize_facts(newObservationFluents, action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])

        unique_states = {
            tuple(tuple(sorted(d.items())) for d in state)
            for state in self.data[action.name]
        }

        if len(unique_states) >= 2:
            data1 = [[y, {k: x[k] for k in y.keys() if k in x}] for y, x in self.data[action.name]]
            data2 = self.data[action.name]
            data3 = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]

            results = self.multi_output_linear_regression_for_adaptive(action.name, [data1, data2, data3])
            self.update_model(action.name, results)
        return False

    def repair_action_all_monomials(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Repairs action by using monomial features up to degree 2.
        """
        x1 = self.generalize_facts(filter_valid_predicates(action, LastObservationFluents), action)
        y2 = self.generalize_facts(filter_valid_predicates(action, newObservationFluents), action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])
        data = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]

        results = self.multi_output_linear_regression(data)
        self.update_model(action.name, results)


    def getDifferentKeys(self, action, different_keys):
        if self.data.get(action.name) and self.data[action.name][0]:
            different_keys = list(self.data[action.name][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, action.fullAction)
        return different_keys


    def multi_output_linear_regression(self, data, decimals=5):
        """
        Trains one linear regression model per target variable.

        Args:
            data (list): Pairs of output and input dicts.
            decimals (int): Decimal rounding for output coefficients.

        Returns:
            dict: Learned models.
        """
        x_keys = sorted({k for _, x in data for k in x.keys()})
        y_keys = sorted({k for y, _ in data for k in y.keys()})

        filled_data = []
        for y, x in data:
            x_full = {k: x.get(k, 0.0) for k in x_keys}
            y_full = {k: y.get(k, 0.0) for k in y_keys}
            filled_data.append((y_full, x_full))

        X = np.array([[x[k] for k in x_keys] for _, x in filled_data])
        Y = {y_key: np.array([y[y_key] for y, _ in filled_data]) for y_key in y_keys}

        results = {}
        for y_key in y_keys:
            model = LinearRegression()
            model.fit(X, Y[y_key])
            coefs = dict(zip(x_keys, model.coef_))
            coefs['__intercept__'] = model.intercept_
            rounded = {k: round(v, decimals) for k, v in coefs.items()}
            filtered_state = {k: v for k, v in rounded.items() if v != 0 and v != 0.0}
            results[y_key] = filtered_state

        return results

    def multi_output_linear_regression_for_adaptive(self, actionName, list_data, decimals=5):
        """
        Applies multiple regression strategies and picks the best one per target variable using R^2 score.
        """
        results = {}
        y_keys = sorted({k for y, _ in list_data[0] for k in y.keys()})
        Y = {y_key: np.array([y[y_key] for y, _ in list_data[0]]) for y_key in y_keys}

        for y_key, y_vector in Y.items():
            best_score = float('-inf')
            best_result = None

            for data in list_data:
                x_keys = sorted({k for _, x in data for k in x.keys()})
                X = np.array([[x.get(k, 0.0) for k in x_keys] for _, x in data])
                model = LinearRegression()
                model.fit(X, Y[y_key])
                score = r2_score(y_vector, model.predict(X))

                if score > best_score:
                    coefs = dict(zip(x_keys, model.coef_))
                    coefs['__intercept__'] = model.intercept_

                    rounded = {k: round(v, decimals) for k, v in coefs.items()}
                    filtered_state = {k: v for k, v in rounded.items() if v != 0 and v != 0.0}
                    best_score = score
                    best_result = filtered_state

            results[y_key] = best_result

        return results


    def multi_output_symbolic(self, data, decimals=5):
        """
        Trains one linear regression model per target variable.

        Args:
            data (list): Pairs of output and input dicts.
            decimals (int): Decimal rounding for output coefficients.

        Returns:
            dict: Learned models.
        """
        x_keys = sorted({k for _, x in data for k in x.keys()})
        y_keys = sorted({k for y, _ in data for k in y.keys()})

        filled_data = []
        for y, x in data:
            x_full = {k: x.get(k, 0.0) for k in x_keys}
            y_full = {k: y.get(k, 0.0) for k in y_keys}
            filled_data.append((y_full, x_full))

        X = np.array([[x[k] for k in x_keys] for _, x in filled_data])
        Y = {y_key: np.array([y[y_key] for y, _ in filled_data]) for y_key in y_keys}

        results = {}
        for y_key in y_keys:
            model = PySRRegressor(
                niterations=120,
                population_size=800,
                maxsize=15,
                unary_operators=("sin", "cos"),  # adjust ops to your problem
                binary_operators=("+", "-", "*", "/"),
                loss="L2DistLoss()",
                model_selection="best_complexity",
                parsimony=1e-4,
                random_state=0,
                feature_names=[f"x{i}" for i in range(X.shape[1])],
                progress=True,
            )
            model.fit(X, Y[y_key])
            coefs = dict(zip(x_keys, model.coef_))
            coefs['__intercept__'] = model.intercept_
            rounded = {k: round(v, decimals) for k, v in coefs.items()}
            filtered_state = {k: v for k, v in rounded.items() if v != 0 and v != 0.0}
            results[y_key] = filtered_state

        return results


    def fit_symbolic_regression(self, X, y):
        """
        Fit symbolic regression with PySR on all data and return model + R^2 score.

        Parameters:
            X (np.ndarray): shape (n_samples, n_features)
            y (np.ndarray): shape (n_samples,)

        Returns:
            model: trained PySRRegressor
            r2: float, R^2 score on training data
        """
        model = PySRRegressor(
            niterations=120,
            population_size=800,
            maxsize=15,
            unary_operators=("sin", "cos"),  # adjust ops to your problem
            binary_operators=("+", "-", "*", "/"),
            loss="L2DistLoss()",
            model_selection="best_complexity",
            parsimony=1e-4,
            random_state=0,
            feature_names=[f"x{i}" for i in range(X.shape[1])],
            progress=True,
        )

        model.fit(X, y)
        r2 = r2_score(y, model.predict(X))
        return model, r2

    def generate_expressions(self, model_dict):
        """
        Converts regression models into assign expressions suitable for PDDL models.
        """
        def nest_addition(terms):
            if not terms:
                return 0
            if len(terms) == 1:
                return terms[0]
            return ["+", terms[0], nest_addition(terms[1:])]

        def tuples_to_lists(obj):
            if isinstance(obj, tuple):
                return [tuples_to_lists(x) for x in obj]
            return obj

        expressions = {}

        for y_key, weights in model_dict.items():
            gen_y = list(y_key)
            intercept = weights.get('__intercept__', 0)
            terms = [["*", coeff, tuples_to_lists(k)] for k, coeff in weights.items() if k != '__intercept__']
            if intercept != 0:
                terms.append(intercept)
            expressions[str(gen_y)] = ["assign", gen_y, nest_addition(terms)]

        return expressions

    def update_model(self, action, results):
        """
        Updates the PDDL model based on learned expressions and writes to domain file.
        """
        for key, expr in self.generate_expressions(results).items():
            self.parsed_model.update_action_effect(action, key, expr)

        self.parsed_model.commit()

    def generalize_facts(self, facts, action):
        """
        Replaces concrete constants in fluents with their corresponding variables.
        """
        param_vars = self.parsed_model.get_parameters_of_action(action.name)
        if len(param_vars) != len(action.groundedParameters):
            raise ValueError("Mismatch between action args and param vars")

        replacement = {c: v for c, v in zip(action.groundedParameters, param_vars)}
        generalized = {}

        for key, val in facts.items():
            if len(key) == 1:
                generalized[key] = val
                continue
            func, *args = key
            if all(a in replacement for a in args):
                new_key = (func, *[replacement[a] for a in args])
                generalized[new_key] = val
                self.parsed_model.add_function(func, new_key[1:], action.name)

        return generalized

    def generalize_facts_for_list(self, facts_list, action):
        """
        Generalizes a list of fluent keys using the same logic as `generalize_facts`.
        """
        action_name, *args = action
        param_vars = self.parsed_model.get_parameters_of_action(action_name)
        if len(param_vars) != len(args):
            raise ValueError("Mismatch between action args and param vars")

        replacement = {c: v for c, v in zip(args, param_vars)}
        generalized = []

        for key in facts_list:
            if len(key) == 1:
                generalized.append(key)
                continue
            func, *args = key
            new_key = (func, *[replacement[a] for a in args])
            generalized.append(new_key)

        return generalized

    def addMissingParamsToAction(self, different_keys, action):
        #key is ('d', 'p0') // (functionName, groundedParams...)
        #action is (actionName, groundedParams...)
        isMissing = False

        for key in different_keys:
            functionName = key[0]
            for i, param in enumerate(key[1:]):
                if param not in action.groundedParameters:
                    isMissing = True
                    theFunctionsParams = self.parsed_model.get_parameters(functionName)
                    self.parsed_model.addParameterToAction(action.name, theFunctionsParams[i])
        self.parsed_model.commit()
        return isMissing


    def addMissingParameterToAction(self, actionName, groundedParameter):
        pass
