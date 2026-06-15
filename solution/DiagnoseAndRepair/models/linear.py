from sklearn.linear_model import LinearRegression
import numpy as np

def multi_output_linear_regression(data, decimals=5):
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