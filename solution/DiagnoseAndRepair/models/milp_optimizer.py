from numpy.ma.extras import average
from ortools.linear_solver import pywraplp
import time

def multi_output_linear_regression_for_adaptive_with_milp(data_rows, repair ):
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