from collections import defaultdict


from sklearn.linear_model import LinearRegression
import numpy as np

from Z_Orgonized.Utilities.config import Config
from Z_Orgonized.UtilitiesForModel.parsedModel import Parse_Model
import re







class Repair:
    def __init__(self):
        self.data = defaultdict(list)
        #happesn only once so problem not update but it not relevant because i only need domain
        self.parsed_model = None

    def initialize(self):
        self.parsed_model = Parse_Model()

    def repair_action1(self, LastObservation, fullAction, newObservation, different_keys):
        action = fullAction[1:-1].split()[0]
        if self.data[action] and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        different_keys = self.generalize_facts_for_list(different_keys, fullAction)
        x1 = LastObservation["fluents"]
        x1 = self.generalize_facts(x1, fullAction)
        x1 = {k: x1[k] for k in different_keys if k in x1}


        x2= newObservation["fluents"]
        y2 = self.generalize_facts(x2, fullAction)
        y2=  {k: y2[k] for k in different_keys if k in y2}

        self.data[action].append([y2,x1])
        print(self.data[action])

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

    def repair_action2(self, LastObservation, action, newObservation, different_keys):
        action = action[1:-1].split()[0]
        x1= LastObservation["fluents"]
        x2= newObservation["fluents"]
        y2=  {k: x2[k] for k in different_keys if k in x2}
        #print(y2,x1)
        self.data[action].append([y2,x1])

        results = self.multi_output_linear_regression(action)
        self.update_model(action, results)

    def repair_action3(self, LastObservation, fullAction, newObservation, different_keys):

        import re

        def filter_valid_predicates(action: str, predicate_dict: dict[str, int]) -> dict[str, str]:
            # Extract parameters from the action string
            _, *params = action.split()

            filtered = {}
            for key, value in predicate_dict.items():
                # Match structure like (name arg1 arg2 ...)
                match = re.match(r'\((\w+)\s+(.+?)\)', key)
                if not match:
                    filtered[key] = value
                    continue  # skip if format is wrong
                _, pred_args = match.groups()
                pred_args_list = pred_args.split()

                # Keep only if all args are in action parameters
                if all(arg in params for arg in pred_args_list):
                    filtered[key] = value

            return filtered
        action = fullAction[1:-1].split()[0]
        if self.data[action] and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        different_keys = self.generalize_facts_for_list(different_keys, fullAction)

        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction[1:-1], x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2= newObservation["fluents"]
        y2 = self.generalize_facts(x2, fullAction)
        y2=  {k: y2[k] for k in different_keys if k in y2}

        #print(y2,x1)
        self.data[action].append([y2,x1])
        print(self.data[action])
        unique_states = set()

        for state in self.data[action]:
            # Each `state` is a list of dicts — we turn each dict into a sorted tuple of items
            frozen_state = tuple(
                tuple(sorted(d.items()))
                for d in state
            )
            unique_states.add(frozen_state)

        count = len(unique_states)
        #print(count)
        results = self.multi_output_linear_regression(action, self.data[action])
        self.update_model(action, results)


    def repair_action4(self, LastObservation, fullAction, newObservation, different_keys):

        import re

        def filter_valid_predicates(action: str, predicate_dict: dict[str, int]) -> dict[str, str]:
            # Extract parameters from the action string
            _, *params = action.split()

            filtered = {}
            for key, value in predicate_dict.items():
                # Match structure like (name arg1 arg2 ...)
                match = re.match(r'\((\w+)\s+(.+?)\)', key)
                if not match:
                    filtered[key] = value
                    continue  # skip if format is wrong
                _, pred_args = match.groups()
                pred_args_list = pred_args.split()

                # Keep only if all args are in action parameters
                if all(arg in params for arg in pred_args_list):
                    filtered[key] = value

            return filtered
        action = fullAction[1:-1].split()[0]
        if self.data[action] and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        different_keys = self.generalize_facts_for_list(different_keys, fullAction)
        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction[1:-1], x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2= newObservation["fluents"]
        y2 = self.generalize_facts(x2, fullAction)
        y2=  {k: y2[k] for k in different_keys if k in y2}

        #print(y2,x1)
        self.data[action].append([y2,x1])
        print(self.data[action])
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

        import re

        def filter_valid_predicates(action: str, predicate_dict: dict[str, int]) -> dict[str, str]:
            # Extract parameters from the action string
            _, *params = action.split()

            filtered = {}
            for key, value in predicate_dict.items():
                # Match structure like (name arg1 arg2 ...)
                match = re.match(r'\((\w+)\s+(.+?)\)', key)
                if not match:
                    filtered[key] = value
                    continue  # skip if format is wrong
                _, pred_args = match.groups()
                pred_args_list = pred_args.split()

                # Keep only if all args are in action parameters
                if all(arg in params for arg in pred_args_list):
                    filtered[key] = value

            return filtered

        action = fullAction[1:-1].split()[0]
        if self.data[action] and self.data[action][0]:
            different_keys = list(self.data[action][0][0].keys())
        different_keys = self.generalize_facts_for_list(different_keys, fullAction)
        x1 = LastObservation["fluents"]
        x1 = filter_valid_predicates(fullAction[1:-1], x1)
        x1 = self.generalize_facts(x1, fullAction)

        x2 = newObservation["fluents"]
        y2 = self.generalize_facts(x2, fullAction)
        y2 = {k: y2[k] for k in different_keys if k in y2}

        # print(y2,x1)
        self.data[action].append([y2, x1])
        print(self.data[action])
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



    def multi_output_linear_regression(self, actionName, data, decimals=5):
        """
        Performs linear regression for each target variable in y against shared input variables x.

        Parameters:
        data (list): List of [y_dict, x_dict] pairs.

        Returns:
        dict: {y_key: {x_key: coefficient, ..., '__intercept__': intercept}, ...}
        """
        data = data
        if not data:
            raise ValueError("Data list is empty.")
        # Collect all unique keys for inputs (x_keys) and outputs (y_keys) across the dataset.
        # Then, for each data entry, fill in any missing keys with 0.0 to ensure uniform feature vectors
        # and avoid dropping samples with incomplete data.
        x_keys = sorted({k for _, x in data for k in x.keys()})


        #remove function whos parameter is not in the action parameters
        for x_key in x_keys.copy():
            func_list = x_key.strip()[1:-1].split()
            if len(func_list) == 1:
                continue
            func_name = func_list[0]
            parameter_name = self.parsed_model.get_parameters_type(func_name)
            if not self.parsed_model.check_if_exist(actionName, parameter_name):
                x_keys.remove(x_key)
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

    def generate_expressions(self, model_dict):
        def nest_addition(terms):
            if not terms:
                return 0
            if len(terms) == 1:
                return terms[0]
            return ["+", terms[0], nest_addition(terms[1:])]

        def generalize_term(term):
            """
            Generalizes terms of the form (name value) by replacing the value with a variable.
            """
            term = term.strip()

            if term.startswith('(') and term.endswith(')'):
                inner = term[1:-1].split()
                if len(inner) == 2:
                    name, var = inner
                    #var = self.parsed_model.get_parameters_name(name)
                    return [name,var]

            return [term[1:-1].strip()] # Return unchanged if not a (name value) structure

        expressions = {}

        for y_key, weights in model_dict.items():
            gen_y = generalize_term(y_key)
            intercept = weights.get('__intercept__', 0)
            terms = []

            for x_key, coeff in weights.items():
                if x_key == '__intercept__':
                    continue
                gen_x = generalize_term(x_key)
                terms.append(["*", coeff, gen_x])

            if intercept != 0:
                terms.append(intercept)

            expr = nest_addition(terms)
            expression = ["assign", gen_y, expr]

            expressions[str(gen_y)] = expression  # Key must be string, lists aren't hashable

        return expressions



    def generalize_facts(self, facts, action_str):
        # Parse action string
        tokens = action_str.strip("()").split()
        action_name, *concrete_args = tokens

        # Get corresponding variables
        param_vars = self.parsed_model.get_parameters_of_action(action_name)
        if len(param_vars) != len(concrete_args):
            raise ValueError("Mismatch between parameters and arguments")

        # Build replacement map
        replacement_map = {const: var for const, var in zip(concrete_args, param_vars)}

        # Generalize keys
        generalized = {}
        for key, value in facts.items():
            key_str = key[0] if isinstance(key, tuple) else key
            for const, var in replacement_map.items():
                key_str = re.sub(rf'\b{re.escape(const)}\b', var, key_str)
            new_key = key_str if isinstance(key, str) else (key_str,)
            generalized[new_key] = value

        return generalized

    def generalize_facts_for_list(self, facts_list, action_str):
        """
        Generalize a list of fact keys by replacing concrete constants with variables,
        based on the structure of the given action string.
        """

        import re

        # Parse action string
        tokens = action_str.strip("()").split()
        action_name, *concrete_args = tokens

        # Get corresponding variables from model
        param_vars = self.parsed_model.get_parameters_of_action(action_name)
        if len(param_vars) != len(concrete_args):
            raise ValueError("Mismatch between parameters and arguments")

        # Build replacement map
        replacement_map = {const: var for const, var in zip(concrete_args, param_vars)}

        # Generalize each fact key in the list
        generalized = []
        for key in facts_list:
            key_str = key[0] if isinstance(key, tuple) else key
            for const, var in replacement_map.items():
                key_str = re.sub(rf'\b{re.escape(const)}\b', var, key_str)
            new_key = key_str if isinstance(key, str) else (key_str,)
            generalized.append(new_key)

        return generalized
