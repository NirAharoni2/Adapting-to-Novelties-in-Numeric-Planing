import ast
import csv
import re
import sys
from pathlib import Path

# Make the solution package importable when running this file directly
ROOT_DIR = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT_DIR))

from solution.Utilities.Score import plot_from_dict

RESULTS_DIR = ROOT_DIR / "results_csv_save"
FILE_PATTERN = re.compile(r"^(?P<domain>.+)_novelty_(?P<novelty>\d+)_seed_(?P<seed>\d+)_data\.csv$")


def legend_from_csv(file_path):
    """Build the {label: (score list, learned model id)} dict that main.py passes to plot_from_dict."""
    legend = {}
    with open(file_path, newline="") as csvfile:
        for row in csv.DictReader(csvfile):
            legend[row["Label"]] = (ast.literal_eval(row["Score"]), int(row["Learned Model ID"]))
    return legend


def main():
    # Plots are saved by plot_from_dict in plots/csv_in_plot/<domain>/novelty_<id>/
    for domain_dir in sorted(RESULTS_DIR.iterdir()):
        if not domain_dir.is_dir():
            continue
        # CSVs are saved under <domain>/<novelty_id>/, so search the domain folder recursively
        for csv_path in sorted(domain_dir.rglob("*.csv")):
            match = FILE_PATTERN.match(csv_path.name)
            if not match:
                continue
            domain_name = match.group("domain")
            novelty_id = int(match.group("novelty"))
            seed = int(match.group("seed"))
            plot_from_dict(
                legend_from_csv(csv_path),
                domain_name,
                novelty_id,
                seed,
                f"{domain_name}_novelty_{novelty_id}_seed_{seed}",
                novelty_intro_idx=0,
            )


if __name__ == "__main__":
    main()
