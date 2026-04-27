from collections import defaultdict, Counter
from sklearn.metrics import r2_score
from sklearn.linear_model import LinearRegression
import numpy as np
from itertools import combinations_with_replacement
from ortools.linear_solver import pywraplp
import time

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
        self.currentTry = defaultdict()
        self.fullData = defaultdict(list)
        self.data = defaultdict(list)
        self.addedParametersChanged = defaultdict(list)
        self.addedParametersMakeChange = defaultdict(list)
        self.parsed_model : Parse_Model = None
        self.numOfPredicates = 0
        self.blockNewData = False



    def mainRepair(self, repairId, LastObservation, fullAction, newObservation, different_keys):
        action = Action(fullAction)
        if Config.checkSignature:
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
            repairMethod = self.repair_action_adaptive
        elif repairId == 7:
            repairMethod = self.repair_action_adaptive_new
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
        if self.blockNewData:
            return

        self.numOfPredicates = len(filter_valid_predicates(action, LastObservationFluents))
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
            if not Config.next:
                self.update_model(action.name, results)


    def repair_action_adaptive_new(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Tries multiple regression forms (basic, full, monomials) and picks the one with highest R² score.
        """


        if self.blockNewData:
            return


        self.numOfPredicates = len(filter_valid_predicates(action, LastObservationFluents))
        x1 = self.generalize_facts(filter_valid_predicates(action, LastObservationFluents), action)
        y2 = self.generalize_facts(filter_valid_predicates(action, newObservationFluents), action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}
        self.data[action.name].append([y2, x1])
        self.fullData[action.name].append([y2, LastObservationFluents, action])

        unique_states = {
            tuple(tuple(sorted(d.items())) for d in state)
            for state in self.data[action.name]
        }
        if len(unique_states) >= 2:
            if action.name in self.currentTry:

                # do this before entering this function maybe
                # only add the new variable,
                # create new data (a,b1,b2) => (a^2 ,a * b1, a*b2, b1^2, b2^2)
                data = []
                for dataRow in self.fullData[action.name]:
                    x1 = self.removeNewParam(self.generalize_facts(filter_valid_predicates(dataRow[2], dataRow[1]), dataRow[2]), dataRow[2])

                    newParam = self.getKeysOfCertinType(dataRow[1], dataRow[2])
                    # monomilas with x1^2 and newparams * x1
                    data.append({'y': dataRow[0], 'oldParams': x1, 'newParam': newParam,'action': dataRow[2]})
                print(data)
                results = self.multi_output_linear_regression_for_adaptive_new(data)
            else:
                data1 = [[y, {k: x[k] for k in y.keys() if k in x}] for y, x in self.data[action.name]]
                data2 = self.data[action.name]
                data3 = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]

                results = self.multi_output_linear_regression_for_adaptive(action.name, [data1, data2, data3])

            if not Config.next:
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
            different_keys = self.generalize_facts_for_list(different_keys, action)
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
            print(actionName)
            print(best_score)
            # num of vars in monomial = 1 + self.numOfPredicates * (1+ self.numOfPredicates)
            print(len(list_data[2]))
            print(len(list_data[2][0][1].keys()) + 1)
            if not self.blockNewData and Config.checkSignature and best_score < 0.9999 and len(list_data[2]) > (len(list_data[2][0][1].keys()) + 1):
                print('here')
                self.addParameter(actionName)
                self.data[actionName] = []
                self.blockNewData = True

                #if rock not 0.99 than add a rnadom paramter that is not already int he action to
                #changing parameters
                #than at the start of next loop add them
            results[y_key] = best_result

        return results

    def multi_output_linear_regression_for_adaptive_new(self, data_rows):
        LIMIT = 100
        y_targets = list(data_rows[0]['y'].keys())
        results = {}
        start_plan_time = time.perf_counter()
        for target in y_targets:
            print(f"--- Solving for target fluent: {target} ---")

            # 1. Create the solver (SCIP handles MIP problems with floats)
            solver = pywraplp.Solver.CreateSolver('CBC')

            # Extract keys for a (oldParams) and b (newParam)
            a_keys = list(data_rows[0]['oldParams'].keys())
            all_b_keys = set()
            for row in data_rows:
                all_b_keys.update(row['newParam'].keys())
            b_keys = sorted(list(all_b_keys))

            n_a = len(a_keys)

            n_b = len(b_keys)

            # 2. Variables
            # x_a are coefficients for the original state fluents
            x_a = [solver.NumVar(-LIMIT, LIMIT, f'x_a_{i}') for i in range(n_a)]
            # x_b are coefficients for the new action parameters
            #list of size len( a_keys * b_singleKey  + b + b^2)
            x_b = solver.NumVar(-LIMIT, LIMIT, f'x_b')
            constant = solver.NumVar(-LIMIT, LIMIT, 'C')

            # 3. Objective: Minimize Sum of Absolute Errors
            error_vars = []

            for i, row in enumerate(data_rows):
                y_val = row['y'][target]

                # Binary switches: Only one 'b' parameter is active per row
                z = [solver.IntVar(0, 1, f'z_{i}_{j}') for j in range(n_b)]
                solver.Add(solver.Sum(z) == 1)

                # Linearize the z[j] * x_b[j] term using Big-M
                b_contribution = solver.NumVar(-1000.0, 1000.0, f'b_contrib_{i}')
                M = 1000

                for j in range(n_b):
                    b_key = b_keys[j]

                    # Check if this row actually contains this specific parameter
                    if b_key in row['newParam']:
                        b_val = row['newParam'][b_key]

                        # If z[j] == 1, b_contribution must equal (b_val * x_b[j])
                        solver.Add(b_contribution <= (b_val * x_b) + M * (1 - z[j]))
                        solver.Add(b_contribution >= (b_val * x_b) - M * (1 - z[j]))
                    else:
                        # If the parameter doesn't exist in this row, this z MUST be 0
                        solver.Add(z[j] == 0)

                # Total Prediction: sum(a*x_a) + b_contribution + constant
                a_sum = sum(row['oldParams'][a_keys[k]] * x_a[k] for k in range(n_a))
                prediction = a_sum + b_contribution + constant

                # Error variable for this specific row (slack variable)
                row_err = solver.NumVar(0, 10000.0, f'err_{i}')
                solver.Add(prediction - y_val <= row_err)
                solver.Add(y_val - prediction <= row_err)
                error_vars.append(row_err)

            solver.Minimize(solver.Sum(error_vars))

            # 4. Solve and Store Results
            status = solver.Solve()

            # 4. Get MILP Size
            num_vars = solver.NumVariables()
            num_constraints = solver.NumConstraints()

            # Optional: Identify how many are binary vs continuous
            num_binaries = sum(1 for v in solver.variables() if v.integer() and v.lb() == 0 and v.ub() == 1)

            end_plan_time = time.perf_counter()
            runtimePlan = end_plan_time - start_plan_time

            functionNameOfBsKey = b_keys[0][0]
            #get the first but need to change for more params
            function = self.parsed_model.get_function(functionNameOfBsKey)

            if status == pywraplp.Solver.OPTIMAL or status == pywraplp.Solver.FEASIBLE:
                results[target] = {
                    'a_coeffs': {a_keys[k]: x_a[k].solution_value() for k in range(n_a)},
                    'b_coeff': {function: x_b.solution_value()},
                    'constant': constant.solution_value(),
                    'total_error': solver.Objective().Value(),
                    'MILP': f"MILP Size for {target}: {num_vars} variables ({num_binaries} binary), {num_constraints} constraints",
                    'runtimePlan': runtimePlan
                }
                print(f"Result: {status} (Error: {results[target]['total_error']})")
            else:
                print(f"Result: No solution found for {target}")
        print(results)
        print(self.clean_and_merge(results, LIMIT))
        results = self.clean_and_merge(results, LIMIT)

        print(f"time: {runtimePlan}")



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

        #self.parsed_model.commit()

    def generalize_facts(self, facts, action):
        """
        Replaces concrete constants in fluents with their corresponding variables.
        """
        param_vars = self.parsed_model.get_parameters_of_action(action.name)
        if len(param_vars) < len(action.groundedParameters):
            raise ValueError(
                f"Not enough param vars ({len(param_vars)}) to cover "
                f"action args ({len(action.groundedParameters)})"
            )
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
        action_name = action.name
        args = action.groundedParameters
        param_vars = self.parsed_model.get_parameters_of_action(action_name)
        if len(param_vars) < len(action.groundedParameters):
            raise ValueError(
                f"Not enough param vars ({len(param_vars)}) to cover "
                f"action args ({len(action.groundedParameters)})"
            )
        replacement = {c: v for c, v in zip(args, param_vars)}
        generalized = []

        for key in facts_list:
            if len(key) == 1:
                generalized.append(key)
                continue
            func, *args = key
            if all(a in replacement for a in args):
                new_key = (func, *[replacement[a] for a in args])
                generalized.append(new_key)

        return generalized

    def addMissingParamsToAction(self, different_keys, action):
        #key is ('d', 'p0') // (functionName, groundedParams...)
        #action is (actionName, groundedParams...)


        for key in different_keys:
            functionName = key[0]
            for i, param in enumerate(key[1:]):
                if param not in action.groundedParameters:
                    action.groundedParameters.append(param)
                    theFunctionsParams = self.parsed_model.get_parameters(functionName)
                    #this if is inaccurate and its clause might cause later problems

                    # if its not true its means we they are equal and we already added the param (used when replanned)
                    paramsNotEqual = len(action.groundedParameters) != len(
                        self.parsed_model.get_parameters_of_action(action.name))

                    if not all(item in self.addedParametersChanged[action.name] for item in theFunctionsParams) and paramsNotEqual:
                        self.parsed_model.addParameterToAction(action.name, theFunctionsParams[i])
                        self.addedParametersChanged[action.name].extend(theFunctionsParams)
        #self.parsed_model.commit()


    def addMissingParameterToAction(self, actionName, groundedParameter):
        pass

    def afterProblem(self):
        #for key, value in self.addedParametersChanged.items():
        #    self.parsed_model.addParameterToAction(key, value) # action.name, theFunctionsParams[i]
        # commit the new parameters
        Config.setContinue(False)
        self.addedParametersChanged = defaultdict(list)
        self.blockNewData = False
        self.parsed_model.commit()

    def addParameter(self, actionName):
        tried = self.addedParametersMakeChange[actionName]
        for parameter in tried:
            self.parsed_model.removeParameterFromAction(actionName, parameter)
            print(f"removed {parameter} from {actionName}")
        triedTypes = [item[1] for item in tried]
        alreadyIn = self.parsed_model.get_types_in_action(actionName)
        possibleAdditions = self.parsed_model.possibleNewParameters().get('object')
        #reverse possibleAdditions[::-1]
        for possibleAddition in possibleAdditions:
            if possibleAddition not in alreadyIn and possibleAddition not in triedTypes:
                newParameter = [f'?{possibleAddition[0]}', possibleAddition]
                newParameter = self.parsed_model.addParameterToAction(actionName, newParameter)
                print(Config.getOriginalDomain())
                self.parsed_model.resetEffects(Config.getOriginalDomain())
                Config.setContinue(True)
                self.currentTry[actionName] = newParameter
                self.addedParametersMakeChange[actionName].append(newParameter)
                self.blockNewData = True
                print(f"added {newParameter} to {actionName}")
                break

    def getKeysOfCertinType(self, dataRow: dict[tuple, int], action: Action):
        dataOfCertainTypeParameter = {}
        groundedParameter = None
        for key, value in dataRow.items():
            thisFunction = key[0]
            if len(key) >= 2:
                groundedParameter = key[1]
            #currently if the function has more than two parameters it dosen't work properly
            functionsTypes = self.parsed_model.get_parameters_type(thisFunction)
            thisType = functionsTypes[0] if len(functionsTypes) > 0 else None
            if thisType == self.currentTry[action.name][1]:
                dataOfCertainTypeParameter[key] = value
                if groundedParameter in action.groundedParameters:
                    return {key: value}
        return dataOfCertainTypeParameter


    def clean_and_merge(self, input_data, boundary=100.0, tolerance=1):
        refined_output = {}

        for target_key, values in input_data.items():
            # Initialize the sub-dictionary for this target
            refined_output[target_key] = {}

            # Filter a_coeffs: keep only if NOT near -100 or 100
            for coeff_key, val in values['a_coeffs'].items():
                if abs(abs(val) - boundary) > tolerance:
                    refined_output[target_key][coeff_key] = round(val,5)

            for coeff_key, val in values['b_coeff'].items():
                if abs(abs(val) - boundary) > tolerance:
                    refined_output[target_key][coeff_key] = round(val,5)

            refined_output[target_key]['__intercept__'] = values['constant']

        return refined_output

    def removeNewParam(self, dataRow: dict[tuple, int], action: Action):
        dataWithoutCertainTypeParameter = {}

        for key, value in dataRow.items():
            thisFunction = key[0]
            #currently if the function has more than two parameters it dosen't work properly
            functionsTypes = self.parsed_model.get_parameters_type(thisFunction)
            thisType = functionsTypes[0] if len(functionsTypes) > 0 else None
            if thisType != self.currentTry[action.name][1]:
                dataWithoutCertainTypeParameter[key] = value

        return dataWithoutCertainTypeParameter