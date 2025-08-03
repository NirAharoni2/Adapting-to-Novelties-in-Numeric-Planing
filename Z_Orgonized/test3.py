import os
from collections import defaultdict

import numpy as np
import pandas as pd
import ast
import csv
from collections import defaultdict
import numpy as np
import ast
import csv

def average_scores_from_csvs(file_paths):
    from collections import defaultdict
    import numpy as np
    import csv
    import ast

    # Step 1: Read and compute gain lists
    scores_dict = defaultdict(list)

    for file_path in file_paths:
        with open(file_path, newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                label = row['Label'].strip()
                score_list = ast.literal_eval(row['Score'])
                gain_list = [1 if score_list[i] > score_list[i - 1] else 0 for i in range(1, len(score_list))]
                scores_dict[label].append(gain_list)

    # Step 2: Identify ALL indices where any 'base' run failed (0)
    failed_indices = set()
    base_runs = scores_dict.get("base", [])
    for run in base_runs:
        for idx, val in enumerate(run):
            if val == 0:
                failed_indices.add(idx)

    # Step 3: Clean all runs by removing failed indices
    averaged_scores = {}
    for label, run_lists in scores_dict.items():
        if label == "base":
            continue  # Skip adding base to final averaged_scores

        cleaned_runs = []
        for run in run_lists:
            cleaned = [val for idx, val in enumerate(run) if idx not in failed_indices]
            cleaned_runs.append(np.array(cleaned))

        if not cleaned_runs:
            continue

        # Make sure all arrays are same length
        min_len = min(len(arr) for arr in cleaned_runs)
        cleaned_runs = [arr[:min_len] for arr in cleaned_runs]

        avg_scores = np.mean(cleaned_runs, axis=0)

        # Step 4: Apply 5-point moving average (forward-looking only)
        smoothed = [
            np.mean(avg_scores[i:i+5])
            for i in range(len(avg_scores) - 4)
        ]

        averaged_scores[label] = smoothed

    return averaged_scores




import matplotlib.pyplot as plt
import os
import itertools



def plot_from_dict(data_dict, plot_title, filename, novelty_intro_idx=None):
    # Start a new figure before plotting
    plt.figure(figsize=(10, 6))
    repairName = {"repair1": "Rel. Variables","repair2": "All Variables","repair3": "All Monomials","repair4": "Adaptive", "base": "Oracle", "no repair": "No Repair"}
    # Distinct dash patterns — different lengths and spacing
    dash_styles = [
        (1, (5, 2)),
        (2, (2, 6)),
        (0, (1, 3)),
        (3, (4, 4, 1, 4)),
        (1, (3, 2, 1, 2)),
        (2, (5, 1, 2, 1)),
        (0, (1, 1)),
        (3, (2, 4)),
    ]

    markers = ['s', '^', 'D', '*', 'x', 'P', 'v', '<', '>']
    colors = ['g', 'r', 'c', 'y', 'm', 'k', '#ff7f0e', '#2ca02c', '#9467bd']

    # Plot each entry
    for i, (legend, values) in enumerate(data_dict.items()):
        legend = repairName[legend]
        x_vals = list(range(1, 1 + len(values)))
        linestyle = dash_styles[i % len(dash_styles)]
        marker = markers[i % len(markers)]
        color = colors[i % len(colors)]
        plt.plot(
            x_vals,
            values,
            label=legend,
            linestyle=linestyle,
            linewidth=2.5,
            marker=marker,
            color=color
        )

    # Novelty introduction line
    if novelty_intro_idx is not None:
        plt.axvline(
            x=novelty_intro_idx,
            color='black',
            linestyle='--',
            linewidth=2,
            label='novelty introduced'
        )

    # Labels and ticks
    plt.xlabel('Start Problem Index', fontsize=27)
    plt.ylabel('Avg. Solved Ratio', fontsize=27)
    plt.xticks(fontsize=24)
    plt.yticks(fontsize=24)

    # Optional title
    # plt.title(plot_title, fontsize=30)

    #plt.legend(fontsize=20)
    plt.grid(True)

    # Save plot
    save_dir = r"C:\newProject\summarized_results"
    os.makedirs(save_dir, exist_ok=True)
    save_path = os.path.join(save_dir, filename + ".png")
    plt.savefig(save_path, bbox_inches='tight')
    plt.close()


def convert_to_gains(input_csv, output_csv):
    df = pd.read_csv(input_csv)

    def score_to_gains(score_str):
        try:
            scores = ast.literal_eval(score_str)
            # Compute 1 if score increases from previous, else 0
            gains = [1 if scores[i] > scores[i-1] else 0 for i in range(1, len(scores))]
            return gains
        except Exception as e:
            return []  # return empty if score format is invalid

    # Apply conversion
    df["Score Gain"] = df["Score"].apply(score_to_gains)

    # Save to new CSV
    df.to_csv(output_csv, index=False, quoting=csv.QUOTE_NONNUMERIC)
    print(f"✅ Saved gain-transformed data to: {output_csv}")


domains = ["sailing", "minecraft", "drone", "expedition"]
difficulties = ["easy", "medium", "hard"]

# Mapping difficulty to file indices
difficulty_map = {
    "easy": [1, 2, 3],
    "medium": [4, 5, 6],
    "hard": [7, 8, 9]
}

base_dir = r"C:\newProject\results_data"

for domain in domains:
    for difficulty in difficulties:
        file_indices = difficulty_map[difficulty]
        file_paths = [
            os.path.join(base_dir, f"{domain}_{i}_data.csv") for i in file_indices
        ]

        # Ensure files exist (optional safety check)
        file_paths = [f for f in file_paths if os.path.isfile(f)]
        if not file_paths:
            print(f"⚠️ No files found for {domain} - {difficulty}")
            continue

        # Compute and plot
        averages = average_scores_from_csvs(file_paths)
        plot_title = f"{domain.capitalize()}: {difficulty.capitalize()} Set"
        plot_filename = f"{domain}_{difficulty}"

        plot_from_dict(averages, plot_title, plot_filename)


