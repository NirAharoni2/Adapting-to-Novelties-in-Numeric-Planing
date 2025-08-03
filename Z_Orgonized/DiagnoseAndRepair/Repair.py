from collections import defaultdict
from typing import Dict
from sklearn.linear_model import OrthogonalMatchingPursuit
from sklearn.metrics import r2_score
from sklearn.linear_model import LinearRegression
import numpy as np

from Z_Orgonized.Utilities.config import Config
from Z_Orgonized.UtilitiesForModel.parsedModel import Parse_Model
import re
import warnings
from sklearn.linear_model import OrthogonalMatchingPursuit


# Ignore OMP linear dependence warning
warnings.filterwarnings(
    "ignore",
    message="Orthogonal matching pursuit ended prematurely due to linear dependence*",
    category=RuntimeWarning
)


def filter_valid_predicates(action_parts: list[str], predicate_dict: dict[tuple, int]) -> dict[tuple, int]:
    # action_parts = ['supply', 'a0', 'b0']
    params = action_parts[1:]

    filtered = {}
    for key, value in predicate_dict.items():
        # Match structure like (name arg1 arg2 ...)
        if len(key) == 1:
            filtered[key] = value

        pred_args_list = key[1:]

        # Keep only if all args are in action parameters
        if all(arg in params for arg in pred_args_list):
            filtered[key] = value

    return filtered


from itertools import combinations_with_replacement
from collections import Counter


def nest_multiplication(terms):
    """
    Recursively nests multiplication: a * b * c -> ('*', a, ('*', b, c))
    """
    terms = list(terms)
    if len(terms) == 1:
        return terms[0]
    elif len(terms) == 2:
        return tuple(['*',terms[0], terms[1]])
    else:
        return tuple(['*', terms[0], nest_multiplication(terms[1:])])


def generate_nested_combinations(term_dict, degree):
    """
    Generates all nested multiplication combinations of keys from term_dict
    up to the given degree.

    Returns a dictionary with nested keys and their evaluated coefficients.
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


class Repair:
    def __init__(self):
        self.data = defaultdict(list)
        #happesn only once so problem not update but it not relevant because i only need domain
        self.parsed_model = None

    def initialize(self):
        self.parsed_model = Parse_Model()

    def repair_action1(self, LastObservation, fullAction, newObservation, different_keys):
        action = fullAction[0]
        if self.data.get(action) and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, fullAction)

        x1 = LastObservation["fluents"]
        x1 = self.generalize_facts(x1, fullAction)
        x1 = {k: x1[k] for k in different_keys if k in x1}


        x2= newObservation["fluents"]
        y2 = self.generalize_facts(x2, fullAction)
        y2=  {k: y2[k] for k in different_keys if k in y2}

        self.data[action].append([y2,x1])
        #print(self.data[action])

        #print(f"action: {action}, data: {self.data[action]}")
        results = self.multi_output_linear_regression(action, self.data[action])
        self.update_model(action, results)

    def update_model(self, action, results):


        for key, value in self.generate_expressions(results).items():
            #key = key[1:-1].strip()
            #print(f"Action: {action}, Key: {key}, Value: {value}")
            self.parsed_model.update_action_effect(action, key, value)
        new_domain = self.parsed_model.rebuild_pddl_domain()

        with open(Config.domain_path, 'w') as f:
            f.write(new_domain)
    '''
    def repair_action2(self, LastObservation, action, newObservation, different_keys):
        action = action[1:-1].split()[0]
        x1= LastObservation["fluents"]
        x2= newObservation["fluents"]
        y2=  {k: x2[k] for k in different_keys if k in x2}
        #print(y2,x1)
        self.data[action].append([y2,x1])

        results = self.multi_output_linear_regression(action)
        self.update_model(action, results)
    '''

    def repair_action3(self, LastObservation, fullAction, newObservation, different_keys):
        action = fullAction[0]

        if self.data.get(action) and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, fullAction)

        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction, x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2 = newObservation["fluents"]
        x2 = filter_valid_predicates(fullAction, x2)
        y2 = self.generalize_facts(x2, fullAction)
        y2 = {k: y2[k] for k in different_keys if k in y2}

        self.data[action].append([y2, x1])
        #print(self.data[action])

        results = self.multi_output_linear_regression(action, self.data[action])
        self.update_model(action, results)

    def repair_action4(self, LastObservation, fullAction, newObservation, different_keys):
        action = fullAction[0]

        if self.data.get(action) and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, fullAction)

        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction, x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2 = newObservation["fluents"]
        x2 = filter_valid_predicates(fullAction, x2)
        y2 = self.generalize_facts(x2, fullAction)
        y2 = {k: y2[k] for k in different_keys if k in y2}

        self.data[action].append([y2, x1])
        #print(self.data[action])

        unique_states = set()

        for state in self.data[action]:
            # Each `state` is a list of dicts — we turn each dict into a sorted tuple of items
            frozen_state = tuple(
                tuple(sorted(d.items()))
                for d in state
            )
            unique_states.add(frozen_state)

        count = len(unique_states)

        if count <= len(self.data[action][0][0].keys()) + 1:
            first_y_keys = set(self.data[action][0][0].keys())
            newData = [[y, {k: x1[k] for k in first_y_keys if k in x1}] for y, x1 in self.data[action]]
            results = self.multi_output_linear_regression(action, newData)
        else:
            results = self.multi_output_linear_regression(action, self.data[action])

        self.update_model(action, results)

    def repair_action5(self, LastObservation, fullAction, newObservation, different_keys):
        action = fullAction[0]

        if self.data.get(action) and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, fullAction)

        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction, x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2 = newObservation["fluents"]
        x2 = filter_valid_predicates(fullAction, x2)
        y2 = self.generalize_facts(x2, fullAction)
        y2 = {k: y2[k] for k in different_keys if k in y2}

        self.data[action].append([y2, x1])
        #print(self.data[action])

        unique_states = set()

        for state in self.data[action]:
            # Each `state` is a list of dicts — we turn each dict into a sorted tuple of items
            frozen_state = tuple(
                tuple(sorted(d.items()))
                for d in state
            )
            unique_states.add(frozen_state)

        count = len(unique_states)

        if count <= len(self.data[action][0][0].keys()) + 1:
            first_y_keys = set(self.data[action][0][0].keys())
            newData = [[y, {k: x1[k] for k in first_y_keys if k in x1}] for y, x1 in self.data[action]]
            results = self.multi_output_linear_regression(action, newData)
        elif count <= len(self.data[action][0][1].keys()) + 1:
            newData = self.data[action]
            results = self.multi_output_linear_regression(action, newData)
        else:
            degree = 2
            newData = [[base, generate_nested_combinations(comb, degree)] for base, comb in self.data[action]]

            results = self.multi_output_linear_regression(action, newData)
        self.update_model(action, results)

    def repair_action6(self, LastObservation, fullAction, newObservation, different_keys):
        action = fullAction[0]

        if self.data.get(action) and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, fullAction)

        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction, x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2 = newObservation["fluents"]
        x2 = filter_valid_predicates(fullAction, x2)
        y2 = self.generalize_facts(x2, fullAction)
        y2 = {k: y2[k] for k in different_keys if k in y2}

        self.data[action].append([y2, x1])
        #print(self.data[action])

        unique_states = set()

        for state in self.data[action]:
            # Each `state` is a list of dicts — we turn each dict into a sorted tuple of items
            frozen_state = tuple(
                tuple(sorted(d.items()))
                for d in state
            )
            unique_states.add(frozen_state)

        count = len(unique_states)
        if count >= 2:
            first_y_keys = set(self.data[action][0][0].keys())
            newData1 = [[y, {k: x1[k] for k in first_y_keys if k in x1}] for y, x1 in self.data[action]]
            newData2 = self.data[action]
            degree = 2
            newData3 = [[base, generate_nested_combinations(comb, degree)] for base, comb in self.data[action]]
            results = self.multi_output_linear_regression2(action, [newData1, newData2, newData3])

            self.update_model(action, results)

    def repair_action7(self, LastObservation, fullAction, newObservation, different_keys):
        action = fullAction[0]

        if self.data.get(action) and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, fullAction)

        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction, x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2 = newObservation["fluents"]
        x2 = filter_valid_predicates(fullAction, x2)
        y2 = self.generalize_facts(x2, fullAction)
        y2 = {k: y2[k] for k in different_keys if k in y2}

        self.data[action].append([y2, x1])
        #print(self.data[action])

        degree = 2
        newData = [[base, generate_nested_combinations(comb, degree)] for base, comb in self.data[action]]

        results = self.multi_output_linear_regression(action, newData)
        self.update_model(action, results)

    def multi_output_linear_regression(self, actionName, data, decimals=5):
        """
        Performs linear regression for each target variable in y against shared input variables x.

        Parameters:
        data (list): List of [y_dict, x_dict] pairs.

        Returns:
        dict: {y_key: {x_key: coefficient, ..., '__intercept__': intercept}, ...}
        """

        x_keys = sorted({k for _, x in data for k in x.keys()})


        #remove function whos parameter is not in the action parameters
        '''
        for x_key in x_keys.copy():
            func_list = x_key
            if len(func_list) == 1:
                continue
            func_name = func_list[0]
            parameter_name = self.parsed_model.get_parameters_type(func_name)
            if not self.parsed_model.check_if_exist(actionName, parameter_name):
                x_keys.remove(x_key)
        '''
        y_keys = sorted({k for y, _ in data for k in y.keys()})


        # Step 2: Fill in missing keys with 0.0
        filled_data = []
        for y, x in data:
            x_full = {k: x.get(k, 0.0) for k in x_keys}
            y_full = {k: y.get(k, 0.0) for k in y_keys}
            filled_data.append((y_full, x_full))

        # Prepare input matrix X and output matrix Y
        X = np.array([[x[k] for k in x_keys] for _, x in filled_data])
        Y = {y_key: np.array([y[y_key] for y, _ in filled_data]) for y_key in y_keys}

        results = {}

        # Train a separate linear regression for each y_key
        for y_key in y_keys:
            model = LinearRegression()
            model.fit(X, Y[y_key])
            coefs = dict(zip(x_keys, model.coef_))
            coefs['__intercept__'] = model.intercept_

            rounded = {k: round(v, decimals) for k, v in coefs.items()}
            filtered_state = {k: v for k, v in rounded.items() if v != 0 and v != 0.0}
            results[y_key] = filtered_state

        return results

    def multi_output_linear_regression2(self, actionName, list_data, decimals=5):
        """
        Performs linear regression for each target variable in y against shared input variables x.

        Parameters:
        data (list): List of [y_dict, x_dict] pairs.

        Returns:
        dict: {y_key: {x_key: coefficient, ..., '__intercept__': intercept}, ...}
        """
        results = {}
        to_get_y_data = list_data[0] #
        y_keys = sorted({k for y, _ in to_get_y_data for k in y.keys()})
        Y = {y_key: np.array([y[y_key] for y, _ in to_get_y_data]) for y_key in y_keys}


        for y_key, y_vector in Y.items():
            best_score = float('-inf')
            best_result = None
            for data in list_data:
                x_keys = sorted({k for _, x in data for k in x.keys()})
                X = np.array([[x[k] for k in x_keys] for _, x in data])

            # Train a separate linear regression for each y_key
                n_nonzero_coefs = min(5, X.shape[1])
                model = LinearRegression()
                model.fit(X, y_vector)
                y_pred = model.predict(X)
                score = r2_score(y_vector, y_pred)
                if score > best_score:

                    coefs = dict(zip(x_keys, model.coef_))
                    coefs['__intercept__'] = model.intercept_

                    rounded = {k: round(v, decimals) for k, v in coefs.items()}
                    filtered_state = {k: v for k, v in rounded.items() if v != 0 and v != 0.0}
                    best_score = score
                    best_result = filtered_state

            results[y_key] = best_result

        return results


    def generate_expressions(self, model_dict):
        def nest_addition(terms):
            if not terms:
                return 0
            if len(terms) == 1:
                return terms[0]
            return ["+", terms[0], nest_addition(terms[1:])]

        def tuples_to_lists(obj):
            if isinstance(obj, tuple):
                return [tuples_to_lists(item) for item in obj]
            else:
                return obj

        expressions = {}

        for y_key, weights in model_dict.items():
            gen_y = list(y_key)
            intercept = weights.get('__intercept__', 0)
            terms = []

            for x_key, coeff in weights.items():
                if x_key == '__intercept__':
                    continue
                gen_x = tuples_to_lists(x_key)
                terms.append(["*", coeff, gen_x])

            if intercept != 0:
                terms.append(intercept)

            expr = nest_addition(terms)
            expression = ["assign", gen_y, expr]

            expressions[str(gen_y)] = expression  # Key must be string, lists aren't hashable

        return expressions



    def generalize_facts(self, facts, action):
        # Parse action string
        action_name, *concrete_args = action

        # Get corresponding variables
        param_vars = self.parsed_model.get_parameters_of_action(action_name)
        if len(param_vars) != len(concrete_args):
            raise ValueError("Mismatch between parameters and arguments")

        # Build replacement map
        replacement_map = {const: var for const, var in zip(concrete_args, param_vars)}

        # Generalize keys
        generalized = {}
        for key, value in facts.items():
            if len(key) == 1:
                generalized[key] = value
                continue
            list_key = list(key)
            #print(list_key)
            if all(k in replacement_map for k in list_key[1:]):
                #also remove fluents that dont match the action paramters
                new_key = [list_key[0]] + [replacement_map[k] for k in list_key[1:]]
                generalized[tuple(new_key)] = value
        for key in generalized.keys():
            self.parsed_model.add_function(key[0], key[1:], action[0])

        return generalized

    def generalize_facts_for_list(self, facts_list, action):
        """
        Generalize a list of fact keys by replacing concrete constants with variables,
        based on the structure of the given action string.
        """

        import re

        # Parse action string
        action_name, *concrete_args = action

        # Get corresponding variables from model
        param_vars = self.parsed_model.get_parameters_of_action(action_name)
        if len(param_vars) != len(concrete_args):
            raise ValueError("Mismatch between parameters and arguments")

        # Build replacement map
        replacement_map = {const: var for const, var in zip(concrete_args, param_vars)}

        # Generalize each fact key in the list
        generalized = []
        for key in facts_list:
            if len(key) == 1:
                generalized.append(key)
                continue
            list_key = list(key)
            new_key =  [list_key[0]] + [replacement_map[k] for k in list_key[1:]]
            generalized.append(tuple(new_key))

        return generalized
