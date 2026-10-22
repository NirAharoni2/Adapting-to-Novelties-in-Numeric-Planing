import os
import ast
import csv
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy import stats

from collections import defaultdict

# ------------------------------
# Data Processing Functions
# ------------------------------

def average_scores_from_csvs(file_paths):
    """
    Processes multiple CSV files to compute smoothed average gain curves per strategy.

    Steps:
    1. Parse Score lists and convert to binary gains (1 if score increased from previous).
    2. Remove indices where the base strategy failed.
    3. Apply a 5-step moving average (forward-looking) to each run.
    4. Compute the average across runs per strategy and its 95% confidence interval.

    Args:
        file_paths (list): List of paths to CSV files.

    Returns:
        dict: Mapping from strategy name to (smoothed average gains, 95% CI half-width) arrays.
    """
    scores_dict = defaultdict(list)

    for file_path in file_paths:
        file_gains = {}
        with open(file_path, newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                label = row['Label'].strip()
                score_list = ast.literal_eval(row['Score'])
                file_gains[label] = [1 if score_list[i] > score_list[i - 1] else 0 for i in range(1, len(score_list))]

        # Each file (seed) has its own problems, so drop the indices where this file's oracle failed (gain == 0)
        failed_indices = {idx for idx, val in enumerate(file_gains.get("Oracle", [])) if val == 0}
        for label, gain_list in file_gains.items():
            if label == "Oracle":
                continue
            scores_dict[label].append([val for idx, val in enumerate(gain_list) if idx not in failed_indices])

    # Compute average scores per strategy
    averaged_scores = {}
    for label, run_lists in scores_dict.items():
        cleaned_runs = [np.array(run) for run in run_lists]

        if not cleaned_runs:
            continue

        min_len = min(len(arr) for arr in cleaned_runs)
        cleaned_runs = [arr[:min_len] for arr in cleaned_runs]

        # Apply 5-step moving average to each run (same curve as smoothing the mean, but gives per-run spread)
        smoothed_runs = np.array([[np.mean(run[i:i + 5]) for i in range(min_len - 4)] for run in cleaned_runs])
        mean = smoothed_runs.mean(axis=0)

        # 95% confidence interval of the mean across runs (t-distribution)
        n = len(smoothed_runs)
        if n > 1:
            ci = stats.t.ppf(0.975, n - 1) * smoothed_runs.std(axis=0, ddof=1) / np.sqrt(n)
        else:
            ci = np.zeros_like(mean)
        averaged_scores[label] = (mean, ci)

    return averaged_scores


def convert_to_gains(input_csv, output_csv):
    """
    Converts a Score column in CSV to a new column representing gains (1 if increasing).

    Args:
        input_csv (str): Path to the input CSV.
        output_csv (str): Path to save the output with added "Score Gain" column.
    """
    df = pd.read_csv(input_csv)

    def score_to_gains(score_str):
        try:
            scores = ast.literal_eval(score_str)
            return [1 if scores[i] > scores[i - 1] else 0 for i in range(1, len(scores))]
        except Exception:
            return []

    df["Score Gain"] = df["Score"].apply(score_to_gains)
    df.to_csv(output_csv, index=False, quoting=csv.QUOTE_NONNUMERIC)
    print(f"✅ Saved gain-transformed data to: {output_csv}")

# ------------------------------
# Plotting Functions
# ------------------------------

def plot_from_dict(data_dict, plot_title, filename, novelty_intro_idx=None):
    """
    Plots average gain curves for each strategy with customized styles.

    Args:
        data_dict (dict): Mapping from label → (smoothed gain values, 95% CI half-width).
        plot_title (str): Title of the plot (unused currently).
        filename (str): Name of file to save the plot under.
        novelty_intro_idx (int, optional): Optional vertical line for novelty intro.
    """
    plt.figure(figsize=(10, 6))

    repairName = {
        "repair1": "Rel. Variables",
        "repair2": "All Variables",
        "repair3": "All Monomials",
        "repair4": "Adaptive",
        "base": "Oracle",
        "no repair": "No Repair"
    }

    # Define styles
    dash_styles = [
        (1, (5, 2)), (2, (2, 6)), (0, (1, 3)), (3, (4, 4, 1, 4)),
        (1, (3, 2, 1, 2)), (2, (5, 1, 2, 1)), (0, (1, 1)), (3, (2, 4))
    ]
    markers = ['s', '^', 'D', '*', 'x', 'P', 'v', '<', '>']
    colors = ['g', 'r', 'c', 'y', 'm', 'k', '#ff7f0e', '#2ca02c', '#9467bd']

    for i, (label, (values, ci)) in enumerate(data_dict.items()):
        name = repairName.get(label, label)
        x_vals = list(range(1, len(values) + 1))
        linestyle = dash_styles[i % len(dash_styles)]
        marker = markers[i % len(markers)]
        color = colors[i % len(colors)]

        plt.plot(
            x_vals, values,
            label=name,
            linestyle=linestyle,
            linewidth=2.5,
            marker=marker,
            color=color
        )
        # 95% CI band, clipped to the valid ratio range
        plt.fill_between(
            x_vals,
            np.clip(values - ci, 0, 1),
            np.clip(values + ci, 0, 1),
            color=color,
            alpha=0.15,
            linewidth=0
        )

    if novelty_intro_idx is not None:
        plt.axvline(x=novelty_intro_idx, color='black', linestyle='--', linewidth=2, label='novelty introduced')

    plt.xlabel('Start Problem Index', fontsize=27)
    plt.ylabel('Avg. Solved Ratio', fontsize=27)
    plt.xticks(fontsize=24)
    plt.yticks(fontsize=24)
    plt.grid(True)
    #plt.title(plot_title, fontsize=30)
    # plt.legend(fontsize=20)

    # Save plot
    SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
    # Plots of the same domain go together in a folder named after it, e.g. minecraft/minecraft_easy.png
    domain_name = filename.rsplit('_', 1)[0]
    save_dir = os.path.abspath(os.path.join(SCRIPT_DIR, '..', '..', 'plots', 'moving_graph_plots', domain_name))
    os.makedirs(save_dir, exist_ok=True)
    save_path = os.path.join(save_dir, filename + ".png")
    plt.savefig(save_path, bbox_inches='tight')
    plt.close()
    print(f"created plot {save_path}'")

# ------------------------------
# Main Execution Loop
# ------------------------------

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
# Directory containing a folder per domain, each holding <domain>_novelty_<N>_seed_<M>_data.csv files
base_dir = os.path.abspath(os.path.join(SCRIPT_DIR, '..', '..', 'results_csv_save'))

# Mapping difficulty levels to novelty ids
difficulty_map = {
    "easy": [1, 2, 3],
    "medium": [4, 5, 6],
    "hard": [7, 8, 9],
}
# Signature change experiments only have novelties 1-6, split into two levels
signature_change_difficulty_map = {
    "lv1": [1, 2, 3],
    "lv2": [4, 5, 6],
}

for domain in sorted(os.listdir(base_dir)):
    domain_dir = os.path.join(base_dir, domain)
    if not os.path.isdir(domain_dir):
        continue

    domain_difficulty_map = signature_change_difficulty_map if "SignatureChange" in domain else difficulty_map
    for difficulty, novelty_ids in domain_difficulty_map.items():
        # All seeds of every novelty in this difficulty
        file_paths = sorted(
            os.path.join(domain_dir, f)
            for f in os.listdir(domain_dir)
            for i in novelty_ids
            if f.startswith(f"{domain}_novelty_{i}_seed_") and f.endswith("_data.csv")
        )

        # Safety check — skip if no files exist
        if not file_paths:
            print(f" No files found for {domain} - {difficulty}")
            continue

        # Compute average scores and plot
        averages = average_scores_from_csvs(file_paths)
        plot_title = f"{domain.capitalize()}: {difficulty.capitalize()} Set"
        plot_filename = f"{domain}_{difficulty}"

        plot_from_dict(averages, plot_title, plot_filename)
