# pip install pysr scikit-learn numpy pandas
import numpy as np
import pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.feature_selection import mutual_info_regression
from sklearn.metrics import r2_score
from sklearn.preprocessing import StandardScaler
from pysr import PySRRegressor

def _safe_corr(x, y):
    if np.std(x) == 0 or np.std(y) == 0:
        return 0.0
    return float(np.corrcoef(x, y)[0, 1])

def rank_variables(X, y):
    """
    Blend three signals per feature:
      - |Pearson corr| with y (raw, sin(x), cos(x) -> max of the three)
      - Mutual information with y
      - RandomForest importance
    Returns a DataFrame sorted by 'score' (higher is more likely important).
    """
    X = np.asarray(X)
    y = np.asarray(y).ravel()
    n, d = X.shape

    # 1) correlation (capture trig by also testing sin/cos transforms)
    corrs = []
    for j in range(d):
        raw = abs(_safe_corr(X[:, j], y))
        s = abs(_safe_corr(np.sin(X[:, j]), y))
        c = abs(_safe_corr(np.cos(X[:, j]), y))
        corrs.append(max(raw, s, c))
    corrs = np.array(corrs)

    # 2) mutual information (nonlinear)
    try:
        mi = mutual_info_regression(X, y, random_state=0)
    except Exception:
        mi = np.zeros(d)

    # 3) tree importance (handles interactions reasonably)
    try:
        rf = RandomForestRegressor(n_estimators=300, random_state=0, n_jobs=-1)
        rf.fit(X, y)
        rf_imp = rf.feature_importances_
    except Exception:
        rf_imp = np.zeros(d)

    # combine (z-score each, then average)
    def z(a):
        a = np.asarray(a, float)
        s = a.std()
        return (a - a.mean()) / (s if s > 0 else 1.0)

    score = (z(corrs) + z(mi) + z(rf_imp)) / 3.0

    rank_df = pd.DataFrame({
        "feature": [f"x{i}" for i in range(d)],
        "corr_trig_max": corrs,
        "mutual_info": mi,
        "rf_importance": rf_imp,
        "score": score
    }).sort_values("score", ascending=False).reset_index(drop=True)

    return rank_df

def fit_symbolic_with_selection(X, y, top_k=None, niterations=200, maxsize=20):
    """
    1) Rank variables
    2) Select top_k (default: auto = min(8, max(3, round(sqrt(d)))))
    3) Fit PySR using + - * / sin cos
    Returns: model, r2_train, ranking_df, selected_indices
    """
    X = np.asarray(X)
    y = np.asarray(y).ravel()
    d = X.shape[1]

    ranking_df = rank_variables(X, y)
    if top_k is None:
        top_k = int(np.clip(int(np.sqrt(d)), 3, 8))
    selected_feats = ranking_df.head(top_k)["feature"].tolist()
    selected_idx = [int(s[1:]) for s in selected_feats]

    X = np.asarray(X)
    y = np.asarray(y).ravel()
    Xs = X[:, selected_idx]
    var_names = [f"x{j}" for j in selected_idx]

    model = PySRRegressor(
        niterations=niterations,
        population_size=1000,
        maxsize=maxsize,
        unary_operators=["sin", "cos"],  # lists (not tuples)
        binary_operators=["+", "-", "*", "/"],
        parsimony=1e-4,  # still encourages simpler formulas
        loss="L2DistLoss()",
        random_state=0,
        progress=True,
    )

    model.fit(Xs, y, variable_names=var_names)

    # R^2 on training data (since you’re training on all data)
    r2 = r2_score(y, model.predict(Xs))

    # If you want the “simplest among the best”:
    # Sort first by loss (ascending), then by complexity (ascending)

    return model, r2, ranking_df, selected_idx

# --- Example usage ---
if __name__ == "__main__":
    rng = np.random.default_rng(0)
    n = 120
    d = 20
    X = rng.uniform(-3, 3, size=(n, d))
    # True function uses only x2, x7: y = x2^2 - 0.8*cos(x7) + x2*x7/3
    y = X[:, 2]**2 - 0.8*np.cos(X[:, 7]) + (X[:, 2]*X[:, 7])/3

    model, r2, ranking, selected = fit_symbolic_with_selection(X, y, top_k=2)
    print("Selected feature indices:", selected)
    print("R² (train):", r2)
    eqs_df = model.equations_  # Already a DataFrame

    best = eqs_df.sort_values(["loss", "complexity"], ascending=[True, True]).iloc[0]
    print("Best equation:", best["equation"])
    print(ranking.head(10))
