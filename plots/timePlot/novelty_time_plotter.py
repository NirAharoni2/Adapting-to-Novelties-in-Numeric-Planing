import argparse
import ast
import os
import re
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# Path configuration
ROOT_DIR = Path(__file__).resolve().parents[2]
RESULTS_DIR = ROOT_DIR / "results_csv"
OUTPUT_DIR = Path(__file__).resolve().parent

TIME_COLUMNS = {
    "planing time": "Planning Time",
    "repair time": "Repair Time",
    "diagnose time": "Diagnose Time",
}
COLORS = ["skyblue", "salmon", "lightgreen"]
NOVELTY_GROUPS = [(1, 3), (4, 6), (7, 9)]
FILE_PATTERN = re.compile(r"^(?P<domain>.+)_novelty_(?P<novelty>\d+)_seed_(?P<seed>\d+)_data\.csv$")


def parse_and_sum(val):
    """Convert a list string like "[0.1, 0.2]" into the total time of the run."""
    if pd.isna(val):
        return 0
    try:
        nums = ast.literal_eval(str(val).strip())
        return float(np.sum(nums)) if len(nums) > 0 else 0
    except (ValueError, SyntaxError, TypeError):
        return 0


def load_domain(domain_dir):
    """Load all runs of a domain into one dataframe: one row per (novelty, seed, label)."""
    frames = []
    for fname in sorted(os.listdir(domain_dir)):
        match = FILE_PATTERN.match(fname)
        if not match:
            continue
        df = pd.read_csv(domain_dir / fname)
        for col in TIME_COLUMNS:
            df[col] = df[col].apply(parse_and_sum)
        df["novelty"] = int(match.group("novelty"))
        df["seed"] = int(match.group("seed"))
        frames.append(df[["Label", "novelty", "seed", *TIME_COLUMNS]])
    if not frames:
        return None
    return pd.concat(frames, ignore_index=True)


def plot_bars(df, title, save_path):
    """Plot the average of each time column per label as side-by-side bars."""
    # Keep the label order as it appears in the CSVs, not alphabetical
    labels = list(dict.fromkeys(df["Label"]))
    means = df.groupby("Label")[list(TIME_COLUMNS)].mean().reindex(labels)

    x = np.arange(len(labels))
    width = 0.8 / len(TIME_COLUMNS)

    fig, ax = plt.subplots(figsize=(12, 6))
    for i, (col, name) in enumerate(TIME_COLUMNS.items()):
        offset = (i - (len(TIME_COLUMNS) - 1) / 2) * width
        ax.bar(x + offset, means[col], width, label=f"Total {name}", color=COLORS[i])

    ax.set_ylabel("Time (seconds)")
    ax.set_title(title)
    ax.set_xticks(x)
    ax.set_xticklabels(labels, rotation=45, ha="right")
    ax.legend(bbox_to_anchor=(1.01, 1), loc="upper left")

    plt.tight_layout()
    os.makedirs(save_path.parent, exist_ok=True)
    plt.savefig(save_path)
    plt.close(fig)
    print(f"Saved: {save_path}")


def plot_domain(domain_dir, group):
    domain = domain_dir.name
    df = load_domain(domain_dir)
    if df is None:
        print(f"Skipping {domain}: no result CSVs found")
        return

    if group:
        for start, end in NOVELTY_GROUPS:
            group_df = df[df["novelty"].between(start, end)]
            if group_df.empty:
                continue
            n_runs = group_df.groupby(["novelty", "seed"]).ngroups
            plot_bars(
                group_df,
                f"{domain} - novelties {start}-{end} (avg over {n_runs} runs)",
                OUTPUT_DIR / domain / f"{domain}_novelties_{start}-{end}_time.png",
            )
    else:
        for novelty, novelty_df in df.groupby("novelty"):
            n_seeds = novelty_df["seed"].nunique()
            plot_bars(
                novelty_df,
                f"{domain} - novelty {novelty} (avg over {n_seeds} seeds)",
                OUTPUT_DIR / domain / f"{domain}_novelty_{novelty}_time.png",
            )


def main():
    shouldGroup = False

    for domain_dir in sorted(RESULTS_DIR.iterdir()):
        if domain_dir.is_dir():
            plot_domain(domain_dir, shouldGroup)


if __name__ == "__main__":
    main()
