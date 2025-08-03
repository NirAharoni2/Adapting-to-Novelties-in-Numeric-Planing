import csv
import ast
from collections import defaultdict
import numpy as np

def average_scores_from_csvs(file_paths):
    # Dictionary to collect scores per label
    scores_dict = defaultdict(list)

    for file_path in file_paths:
        with open(file_path, newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                label = row['Label'].strip()
                score_list = ast.literal_eval(row['Score'])  # Safely convert string to list
                scores_dict[label].append(score_list)

    # Calculate average score list per label
    averaged_scores = {}
    for label, score_lists in scores_dict.items():
        # Ensure lists are the same length
        score_arrays = [np.array(lst) for lst in score_lists]
        avg_scores = np.mean(score_arrays, axis=0)
        averaged_scores[label] = avg_scores.tolist()

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
        (0, (3, 5)),
        (1, (5, 2)),
        (2, (2, 6)),
        (0, (1, 3)),
        (3, (4, 4, 1, 4)),
        (1, (3, 2, 1, 2)),
        (2, (5, 1, 2, 1)),
        (0, (1, 1)),
        (3, (2, 4)),
    ]

    markers = ['o', 's', '^', 'D', '*', 'x', 'P', 'v', '<', '>']
    colors = ['b', 'g', 'r', 'c', 'y', 'm', 'k', '#ff7f0e', '#2ca02c', '#9467bd']

    # Plot each entry
    for i, (legend, values) in enumerate(data_dict.items()):
        legend = repairName[legend]
        x_vals = list(range(len(values)))
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
    plt.xlabel('Problem Index', fontsize=27)
    plt.ylabel('Solved #', fontsize=27)
    plt.xticks(fontsize=24)
    plt.yticks(fontsize=24)

    # Optional title
    # plt.title(plot_title, fontsize=30)

    plt.legend(fontsize=20)
    plt.grid(True)

    # Save plot
    save_dir = r"C:\newProject\summarized_results"
    os.makedirs(save_dir, exist_ok=True)
    save_path = os.path.join(save_dir, filename + ".png")
    plt.savefig(save_path, bbox_inches='tight')
    plt.close()

    #plt.show()


# Example usage:
domains= ["sailing", "minecraft", "drone", "expedition"]
difficullties = ["easy", "medium", "hard"]
for domain in domains:
    for difficullty in difficullties:
        num1, num2, num3 = (None,None,None)
        if difficullty == "easy":
            num1 = 1
            num2 = 2
            num3 = 3
        if difficullty == "medium":
            num1 = 4
            num2 = 5
            num3 = 6
        if difficullty == "hard":
            num1 = 7
            num2 = 8
            num3 = 9
        file_paths = [
            rf'C:\newProject\results_data\{domain}_{num1}_data.csv',
            rf'C:\newProject\results_data\{domain}_{num2}_data.csv',
            rf'C:\newProject\results_data\{domain}_{num3}_data.csv',
        ]

        averages = average_scores_from_csvs(file_paths)



        plot_from_dict(averages, f"{domain}: {difficullty} set", f"{domain}_{difficullty}")
