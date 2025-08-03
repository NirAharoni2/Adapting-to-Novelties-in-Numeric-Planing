import os
import ast
import csv
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

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
    3. Compute average of gains across runs per strategy.
    4. Apply a 5-step moving average (forward-looking).

    Args:
        file_paths (list): List of paths to CSV files.

    Returns:
        dict: Mapping from strategy name to smoothed average gains list.
    """
    scores_dict = defaultdict(list)

    for file_path in file_paths:
        with open(file_path, newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                label = row['Label'].strip()
                score_list = ast.literal_eval(row['Score'])
                gain_list = [1 if score_list[i] > score_list[i - 1] else 0 for i in range(1, len(score_list))]
                scores_dict[label].append(gain_list)

    # Identify all indices where base strategy had a failure (gain == 0)
    failed_indices = set()
    for run in scores_dict.get("base", []):
        for idx, val in enumerate(run):
            if val == 0:
                failed_indices.add(idx)

    # Remove failed indices and compute average scores for other strategies
    averaged_scores = {}
    for label, run_lists in scores_dict.items():
        if label == "base":
            continue

        cleaned_runs = []
        for run in run_lists:
            cleaned = [val for idx, val in enumerate(run) if idx not in failed_indices]
            cleaned_runs.append(np.array(cleaned))

        if not cleaned_runs:
            continue

        min_len = min(len(arr) for arr in cleaned_runs)
        cleaned_runs = [arr[:min_len] for arr in cleaned_runs]
        avg_scores = np.mean(cleaned_runs, axis=0)

        # Apply 5-step moving average
        smoothed = [np.mean(avg_scores[i:i + 5]) for i in range(len(avg_scores) - 4)]
        averaged_scores[label] = smoothed

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
        data_dict (dict): Mapping from label → list of smoothed gain values.
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

    for i, (label, values) in enumerate(data_dict.items()):
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

    if novelty_intro_idx is not None:
        plt.axvline(x=novelty_intro_idx, color='black', linestyle='--', linewidth=2, label='novelty introduced')

    plt.xlabel('Start Problem Index', fontsize=27)
    plt.ylabel('Avg. Solved Ratio', fontsize=27)
    plt.xticks(fontsize=24)
    plt.yticks(fontsize=24)
    plt.grid(True)
    # plt.title(plot_title, fontsize=30)
    # plt.legend(fontsize=20)

    # Save plot
    save_dir = r"\Felix\plots\moving_graph_plots"
    os.makedirs(save_dir, exist_ok=True)
    save_path = os.path.join(save_dir, filename + ".png")
    plt.savefig(save_path, bbox_inches='tight')
    plt.close()

# ------------------------------
# Main Execution Loop
# ------------------------------

# Domains and problem difficulty levels to evaluate
domains = ["sailing", "minecraft", "drone", "expedition"]
difficulties = ["easy", "medium", "hard"]

# Mapping difficulty levels to specific CSV file indices
difficulty_map = {
    "easy": [1, 2, 3],
    "medium": [4, 5, 6],
    "hard": [7, 8, 9]
}

base_dir = r"\Felix\results_csv"  # Directory containing CSVs for each domain/difficulty

for domain in domains:
    for difficulty in difficulties:
        file_indices = difficulty_map[difficulty]
        file_paths = [
            os.path.join(base_dir, f"{domain}_{i}_data.csv")
            for i in file_indices
        ]

        # Safety check — skip if no files exist
        file_paths = [f for f in file_paths if os.path.isfile(f)]
        if not file_paths:
            print(f"⚠️ No files found for {domain} - {difficulty}")
            continue

        # Compute average scores and plot
        averages = average_scores_from_csvs(file_paths)
        plot_title = f"{domain.capitalize()}: {difficulty.capitalize()} Set"
        plot_filename = f"{domain}_{difficulty}"

        plot_from_dict(averages, plot_title, plot_filename)
