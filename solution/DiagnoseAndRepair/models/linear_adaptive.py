from sklearn.metrics import r2_score
from sklearn.linear_model import LinearRegression
import numpy as np

from solution.Utilities.config import Config


def multi_output_linear_regression_for_adaptive(actionName, list_data, repair, decimals=5):
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
        if not repair.blockNewData and Config.checkSignature and best_score < 0.9999 and len(list_data[2]) > (
                len(list_data[2][0][1].keys()) + 1):
            print('here')
            repair.tick = 0
            #repair.addParameter(actionName)
            repair.needNewParameter = True
            repair.data[actionName] = []
            repair.blockNewData = True

            # if rock not 0.99 than add a rnadom paramter that is not already int he action to
            # changing parameters
            # than at the start of next loop add them
        results[y_key] = best_result

    return results