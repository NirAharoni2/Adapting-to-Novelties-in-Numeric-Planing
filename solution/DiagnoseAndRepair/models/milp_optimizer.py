from collections import defaultdict

from numpy.ma.extras import average
from ortools.linear_solver import pywraplp
import time
import copy
from utils.features import generate_nested_combinations

def transformOldParamsToMonomials(row, k):
    return generate_nested_combinations(row['oldParams'], k)


def transformNewParamsToMonomials(repair, row, k):
    monomials_new_params = {}
    a = row['oldParams']
    b = row['newParam']
    actionName = row['action'].name
    #need to group by key[1] (the parameter) (key = ('xl', 'x0y0z0')), then do bi to each key and do
    #      combined_dict_i = bi_1 | ... | bi_k | a
    #and key will be ( bi_1 | ... | bi_k )

    grouped = defaultdict(dict)
    for (k0, k1), v in b.items():
        grouped[k1][k0] = v

    grouped = dict(grouped)

    for key, value in b.items():
        bi_lifted_key = tuple((key[0], repair.parsed_model.getLastAddParameterToAction(actionName)[0]))
        bi = {bi_lifted_key: value}
        combined_dict_i = bi | a
        all_monomials = generate_nested_combinations(combined_dict_i, k)
        monomials_new_param_i = {k: v for k, v in all_monomials.items() if (bi_lifted_key in k or bi_lifted_key == k)}
        monomials_new_params[key] = monomials_new_param_i
    print(monomials_new_params)
    return monomials_new_params


def transformToMonomials(repair, data_rows, k):
    new_data_rows = copy.deepcopy(data_rows)
    #new first old later
    for row in new_data_rows:
        row['newParam'] = transformNewParamsToMonomials(repair, row, k)
        row['oldParams'] = transformOldParamsToMonomials(row, k)
    return new_data_rows



def multi_output_monomials_regression_for_adaptive_with_milp(data_rows, repair ):
    LIMIT = 100
    TIME_LIMIT_MS = 30000
    data_rows = transformToMonomials(repair, data_rows, 2)
    print(data_rows[0])
    y_targets = list(data_rows[0]['y'].keys())
    results = {}
    start_plan_time = time.perf_counter()
    for target in y_targets:
        print(f"--- Solving for target fluent: {target} ---")

        # 1. Create the solver (SCIP handles MIP problems with floats)
        solver = pywraplp.Solver.CreateSolver('CBC')

        # Extract keys for a (oldParams) and b (newParam)
        a_keys = list(data_rows[0]['oldParams'].keys())
        print(a_keys)
        all_potentials_b_keys = set()
        for row in data_rows:
            all_potentials_b_keys.update(row['newParam'].keys())
        b_potentials_keys = sorted(list(all_potentials_b_keys))
        print(b_potentials_keys)

        n_a = len(a_keys)

        number_of_potentials_b = len(b_potentials_keys)
        keys_in_single_b = list(next(iter(data_rows[0]['newParam'].values())).keys())
        number_of_keys_in_single_b = len(keys_in_single_b)
        print(keys_in_single_b)

        # 2. Variables
        # x_a are coefficients for the original state fluents
        x_a = [solver.NumVar(-LIMIT, LIMIT, f'x_a_{i}') for i in range(n_a)]
        # x_b are coefficients for the new action parameters
        # list of size len( a_keys * b_singleKey  + b + b^2)
        x_b = [solver.NumVar(-LIMIT, LIMIT, f'x_b_{i}') for i in range(number_of_keys_in_single_b)]
        constant = solver.NumVar(-LIMIT, LIMIT, 'C')

        # 3. Objective: Minimize Sum of Absolute Errors
        error_vars = []

        for i, row in enumerate(data_rows):
            y_val = row['y'][target]

            # Binary switches: Only one 'b' parameter is active per row
            z = [solver.IntVar(0, 1, f'z_{i}_{j}') for j in range(number_of_potentials_b)]
            solver.Add(solver.Sum(z) == 1)

            # Linearize the z[j] * x_b[j] term using Big-M
            b_contribution = solver.NumVar(-1000.0, 1000.0, f'b_contrib_{i}')
            M = 1000
            print(b_potentials_keys)
            for j in range(number_of_potentials_b):
                b_potential_key = b_potentials_keys[j]
                print(f'key {b_potential_key}')
                # Check if this row actually contains this specific parameter
                if b_potential_key in row['newParam']:
                    b_inner_items = row['newParam'][b_potential_key]
                    # print('-------')
                    # print(keys_in_single_b)
                    # print(b_inner_items)
                    # print('-------')
                    print(keys_in_single_b)
                    print(b_inner_items)
                    b_sum = sum(b_inner_items[keys_in_single_b[k]] * x_b[k] for k in range(number_of_keys_in_single_b))
                    solver.Add(b_contribution <= b_sum + M * (1 - z[j]))
                    solver.Add(b_contribution >= b_sum - M * (1 - z[j]))
                else:
                    solver.Add(z[j] == 0)

            # Total Prediction: sum(a*x_a) + b_contribution + constant
            a_sum = sum(row['oldParams'][a_keys[k]] * x_a[k] for k in range(n_a))
            prediction = a_sum + b_contribution + constant

            # Error variable for this specific row (slack variable)
            row_err = solver.NumVar(0, 10000.0, f'err_{i}')
            solver.Add(prediction - y_val <= row_err)
            solver.Add(y_val - prediction <= row_err)
            error_vars.append(row_err)

        # --- 1. Define a large constant for the feature bounds ---
        BIG_M_WEIGHT = 1000.0  # Adjust based on the maximum expected value of your x_b weights

        # --- 2. Create Binary Variables to track if a key is used ---
        gamma = []
        for k in range(number_of_keys_in_single_b):
            gamma.append(solver.BoolVar(f'gamma_{k}'))

        # --- 3. Link x_b continuous weights to gamma binary indicators ---
        for k in range(number_of_keys_in_single_b):
            # If x_b[k] is active (non-zero), gamma[k] MUST be 1
            # -BIG_M * gamma[k] <= x_b[k] <= BIG_M * gamma[k]
            solver.Add(x_b[k] <= BIG_M_WEIGHT * gamma[k])
            solver.Add(x_b[k] >= -BIG_M_WEIGHT * gamma[k])

        gamma_a = []

        for k in range(n_a):
            gamma_a.append(solver.BoolVar(f'gamma_a{k}'))

        # --- 3. Link x_b continuous weights to gamma binary indicators ---
        for k in range(n_a):
            # If x_b[k] is active (non-zero), gamma[k] MUST be 1
            # -BIG_M * gamma[k] <= x_b[k] <= BIG_M * gamma[k]
            solver.Add(x_a[k] <= BIG_M_WEIGHT * gamma_a[k])
            solver.Add(x_a[k] >= -BIG_M_WEIGHT * gamma_a[k])

        # --- 4. Update the Objective Function ---
        # Let's say you already have your error expression: total_error = sum(e_row)
        # Choose a small penalty weight lambda.
        # It should be small enough not to ruin accuracy, but large enough to eliminate useless keys.
        lambd = 0.1

        # Combine original tracking error with the sparsity penalty
        solver.Minimize(solver.Sum(error_vars) + lambd * (sum(gamma) + sum(gamma_a)))

        # 4. Solve and Store Results
        start_plan_time = time.perf_counter()
        solver.SetTimeLimit(TIME_LIMIT_MS)
        status = solver.Solve()
        end_plan_time = time.perf_counter()
        runtimePlan = end_plan_time - start_plan_time

        # 4. Get MILP Size
        num_vars = solver.NumVariables()
        num_constraints = solver.NumConstraints()

        # Optional: Identify how many are binary vs continuous
        num_binaries = sum(1 for v in solver.variables() if v.integer() and v.lb() == 0 and v.ub() == 1)

        if status == pywraplp.Solver.OPTIMAL or status == pywraplp.Solver.FEASIBLE:
            results[target] = {
                'a_coeffs': {a_keys[k]: x_a[k].solution_value() for k in range(n_a)},
                'b_coeff': {keys_in_single_b[k]: x_b[k].solution_value() for k in range(number_of_keys_in_single_b)},
                'constant': constant.solution_value(),
                'total_error': solver.Objective().Value(),
                'MILP': f"MILP Size for {target}: {num_vars} variables ({num_binaries} binary), {num_constraints} constraints",
                'runtime': runtimePlan
            }
            print(f"Result: {status} (Error: {results[target]['total_error']})")
        else:
            print(f"Result: No solution found for {target}")
    error = sum( results[target]["total_error"] for target in results.keys() ) / len(results.keys())
    results = clean_and_merge(results, LIMIT)
    print(results)

    print(f"time: {runtimePlan}")

    return results, error



def multi_output_linear_regression_for_adaptive_with_milp(data_rows, repair ):
    print(data_rows)
    LIMIT = 100
    TIME_LIMIT_MS = 10000
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
        # list of size len( a_keys * b_singleKey  + b + b^2)
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
        start_plan_time = time.perf_counter()
        solver.SetTimeLimit(TIME_LIMIT_MS)
        status = solver.Solve()
        end_plan_time = time.perf_counter()
        runtimePlan = end_plan_time - start_plan_time

        # 4. Get MILP Size
        num_vars = solver.NumVariables()
        num_constraints = solver.NumConstraints()

        # Optional: Identify how many are binary vs continuous
        num_binaries = sum(1 for v in solver.variables() if v.integer() and v.lb() == 0 and v.ub() == 1)

        functionNameOfBsKey = b_keys[0][0]
        # get the first but need to change for more params
        function = repair.parsed_model.get_function(functionNameOfBsKey)

        if status == pywraplp.Solver.OPTIMAL or status == pywraplp.Solver.FEASIBLE:
            results[target] = {
                'a_coeffs': {a_keys[k]: x_a[k].solution_value() for k in range(n_a)},
                'b_coeff': {function: x_b.solution_value()},
                'constant': constant.solution_value(),
                'total_error': solver.Objective().Value(),
                'MILP': f"MILP Size for {target}: {num_vars} variables ({num_binaries} binary), {num_constraints} constraints",
                'runtime': runtimePlan
            }
            print(f"Result: {status} (Error: {results[target]['total_error']})")
        else:
            print(f"Result: No solution found for {target}")
    error = sum( results[target]["total_error"] for target in results.keys() ) / len(results.keys())
    results = clean_and_merge(results, LIMIT)
    print(results)

    print(f"time: {runtimePlan}")

    return results, error

def clean_and_merge(input_data, boundary=100.0, tolerance=1):
    refined_output = {}

    for target_key, values in input_data.items():
        # Initialize the sub-dictionary for this target
        refined_output[target_key] = {}

        # Filter a_coeffs: keep only if NOT near -100 or 100
        for coeff_key, val in values['a_coeffs'].items():
            if abs(abs(val) - boundary) > tolerance and round(val,5) != 0:
                refined_output[target_key][coeff_key] = round(val,5)

        for coeff_key, val in values['b_coeff'].items():
            if abs(abs(val) - boundary) > tolerance and round(val,5) != 0:
                refined_output[target_key][coeff_key] = round(val,5)

        refined_output[target_key]['__intercept__'] = round(values['constant'],5)

    return refined_output








