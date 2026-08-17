import ast
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import os

# Path configuration
base_dir = "results_csv"
# 1. Load the data

def plot(domain, i):
    name = f'{domain}Lvl2Experiments_{i}'
    fname = os.path.join("../../", base_dir, f"{name}_data.csv")

    df = pd.read_csv(fname)


    # 2. Helper function to clean and parse the tuple strings into actual numerical averages
    def parse_and_sum(val):
        if pd.isna(val):
            return 0
        try:
            # Convert string representation of tuple "(1.2, 3.4)" to an actual tuple/list
            nums = ast.literal_eval(str(val).strip())
            return np.sum(nums) if len(nums) > 0 else 0
        except (ValueError, SyntaxError):
            return 0


    # Apply parsing to the time columns
    df["total_planning_time"] = df["planing time"].apply(parse_and_sum)
    df["total_execute_repair_time"] = df["execute & repair time"].apply(
        parse_and_sum
    )

    # 3. Group by the 'Label' to aggregate the metrics per model/label
    grouped_df = (
        df.groupby("Label")[["total_planning_time", "total_execute_repair_time"]]
        .mean()
        .reset_index()
    )

    # 4. Plotting the Bar Chart
    labels = grouped_df["Label"]
    planning_means = grouped_df["total_planning_time"]
    execute_means = grouped_df["total_execute_repair_time"]

    x = np.arange(len(labels))  # Label locations
    width = 0.35  # Width of the bars

    fig, ax = plt.subplots(figsize=(10, 6))

    # Create side-by-side bars for each label
    rects1 = ax.bar(
        x - width / 2, planning_means, width, label="Total Planning Time", color="skyblue"
    )
    rects2 = ax.bar(
        x + width / 2,
        execute_means,
        width,
        label="Total Execute & Repair Time",
        color="salmon",
    )

    # Add labels, title and custom x-axis tick labels
    ax.set_ylabel("Time (seconds)")
    ax.set_title("Performance Metrics by Label")
    ax.set_xticks(x)
    ax.set_xticklabels(labels, rotation=45, ha="right")
    ax.legend()

    plt.tight_layout()
    plt.savefig(f"{name}plot.png")


domains = ['minecraft', 'sailing', 'expedition']
for domain in domains:
    for i in range(1,4):
        plot(domain, i)