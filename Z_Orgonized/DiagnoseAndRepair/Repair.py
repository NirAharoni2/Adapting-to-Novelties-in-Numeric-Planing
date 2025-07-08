from collections import defaultdict


from sklearn.linear_model import LinearRegression
import numpy as np

from Z_Orgonized.UtilitiesForModel.parsedModel import Parse_Model


def generate_expressions(model_dict):
    def nest_addition(terms):
        if not terms:
            return "0"
        if len(terms) == 1:
            return terms[0]
        return f"(+ {terms[0]} {nest_addition(terms[1:])})"

    def generalize_term(term):
        """Convert (name s0) → (name ?s)"""
        term = term.strip()
        if term.startswith('(') and term.endswith(')'):
            inner = term[1:-1].split()
            if len(inner) == 2:
                name, var = inner
                # Strip digits and prefix with ?
                var = '?' + ''.join(filter(lambda c: not c.isdigit(), var))
                return f"({name} {var})"
        return term  # Return as-is if not a match

    expressions = {}

    for y_key, weights in model_dict.items():
        gen_y = generalize_term(y_key)
        intercept = weights.get('__intercept__', 0)
        terms = []

        for x_key, coeff in weights.items():
            if x_key == '__intercept__':
                continue
            gen_x = generalize_term(x_key)
            terms.append(f"(* {coeff} {gen_x})")

        if intercept != 0:
            terms.append(str(intercept))

        expr = nest_addition(terms)
        expression = f"(assign {gen_y} {expr})"
        expressions[gen_y] = expression  # Use generalized key here

    return expressions


def multi_output_linear_regression(data, decimals=5):
    """
    Performs linear regression for each target variable in y against shared input variables x.

    Parameters:
    data (list): List of [y_dict, x_dict] pairs.

    Returns:
    dict: {y_key: {x_key: coefficient, ..., '__intercept__': intercept}, ...}
    """
    if not data:
        raise ValueError("Data list is empty.")

    # Extract all x_keys and y_keys from the first item
    #fix this
    x_keys = list(data[-1][1].keys())
    y_keys = list(data[-1][0].keys())

    # Filter out entries with missing keys
    filtered_data = [
        (y, x) for y, x in data
        if all(k in x for k in x_keys) and all(k in y for k in y_keys)
    ]
    # Prepare input matrix X and output matrix Y
    X = np.array([[x[k] for k in x_keys] for _, x in filtered_data])
    Y = {y_key: np.array([y[y_key] for y, _ in filtered_data]) for y_key in y_keys}

    results = {}

    # Train a separate linear regression for each y_key
    for y_key in y_keys:
        model = LinearRegression()
        model.fit(X, Y[y_key])
        coefs = dict(zip(x_keys, model.coef_))
        coefs['__intercept__'] = model.intercept_

        rounded = {k: round(v, decimals) for k, v in coefs.items()}
        results[y_key] = rounded

    return results


class Repair:
    def __init__(self, domain_name):
        self.data = defaultdict(list)
        self.domain_name = domain_name

    def repair_action(self, LastObservation, action, newObservation, different_keys):
        x1= LastObservation["fluents"]
        x1= {k: x1[k] for k in different_keys if k in x1}
        x2= newObservation["fluents"]
        y2=  {k: x2[k] for k in different_keys if k in x2}
        print(y2,x1)
        self.data[action].append([y2,x1])

        results = multi_output_linear_regression(self.data[action])
        self.update_model(action, results)

    def update_model(self, action, results):
        file_path = rf"C:\newProject\ipc2023-dataset\{self.domain_name}\domain.pddl"

        with open(file_path) as f:
            domain_text = f.read()

        parsed_model = Parse_Model(domain_text)

        action = action.strip()
        action = action[1:-1].strip().split()[0]
        for key, value in generate_expressions(results).items():
            key = key[1:-1].strip()
            print(f"Action: {action}, Key: {key}, Value: {value}")
            parsed_model.update_action_effect(action, key, value)
        new_domain = parsed_model.reconstruct_model()

        with open(file_path, 'w') as f:
            f.write(new_domain)
