import os

import pandas as pd
import ast
import numpy as np

# Load your CSV
domain = "minecraft"
i = 1
base_dir = r"C:\Felix\results_csv"
file_path = os.path.join(base_dir, f"{domain}_{i}_data.csv")
df = pd.read_csv(file_path)

# Convert the stringified list back to a Python list
df["Score"] = df["Score"].apply(ast.literal_eval)

# Convert cumulative scores to binary (1 = solved new problem at that step, 0 = not)
def cumulative_to_binary(seq):
    seq = np.array(seq)
    diff = np.diff(seq, prepend=0)  # prepend 0 so lengths match
    diff[diff > 1] = 1  # just in case multiple jumps occur
    return diff

df["Binary"] = df["Score"].apply(cumulative_to_binary)


def moving_average(x, window=5):
    return np.convolve(x, np.ones(window)/window, mode='valid')

df["Smoothed"] = df["Binary"].apply(moving_average)

anova_data = pd.DataFrame({
    "Label": np.repeat(df["Label"], df["Smoothed"].apply(len)),
    "Score": np.concatenate(df["Smoothed"].values)
})

from scipy import stats

groups = [g["Score"].values for _, g in anova_data.groupby("Label")]
f_stat, p_val = stats.f_oneway(*groups)

print("F-statistic:", f_stat)
print("p-value:", p_val)