import os
import csv
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import seaborn as sns

# -------------------------------
# Style and configuration settings
# -------------------------------

label_name_map = {
    "base": "Base",
    "no repair": "No Repair",
    "repair1": "Rel. Variables",
    "repair2": "All Variables",
    "repair3": "All Monomials",
    "repair4": "Adaptive",
}

style_order = [
    "Base",
    "No Repair",
    "Rel. Variables",
    "All Variables",
    "All Monomials",
    "Adaptive",
]

line_styles = {
    "Base": (0, (3, 5)),
    "No Repair": (1, (5, 2)),
    "Rel. Variables": (2, (2, 6)),
    "All Variables": (0, (1, 3)),
    "All Monomials": (3, (4, 4, 1, 4)),
    "Adaptive": (1, (3, 2, 1, 2)),
}

markers = {
    "Base": 'o',
    "No Repair": 's',
    "Rel. Variables": '^',
    "All Variables": 'D',
    "All Monomials": '*',
    "Adaptive": 'x',
}

colors = {
    "Base": 'b',
    "No Repair": 'g',
    "Rel. Variables": 'r',
    "All Variables": 'c',
    "All Monomials": 'y',
    "Adaptive": 'm',
}

# -------------------------------
# Load and compile model IDs from files
# -------------------------------

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
input_folder = os.path.abspath(os.path.join(SCRIPT_DIR, '..', '..', 'results_csv'))

domains = ["sailing", "minecraft", "drone", "expedition"]

compiled_rows = []

for domain in domains:
    for i in range(1, 10):
        file_name = f"{domain}_{i}_data.csv"
        file_path = os.path.join(input_folder, file_name)

        if not os.path.exists(file_path):
            print(f"Missing: {file_name}")
            continue

        source = f"{domain}_novelty{i}"
        with open(file_path, newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                label = row['Label'].strip()
                model_id_raw = row['Learned Model ID'].strip()
                model_id = None if model_id_raw == '-1' else float(model_id_raw)
                compiled_rows.append({
                    "source": source,
                    "label": label,
                    "model_id": model_id
                })

# Build DataFrame in memory
df = pd.DataFrame(compiled_rows)

# -------------------------------
# Preprocessing and Plotting
# -------------------------------

df = df.dropna(subset=["model_id"])
df["model_id"] = df["model_id"].astype(float)
df["domain"] = df["source"].apply(lambda s: s.split("_")[0])

unique_domains = df["domain"].unique()

for domain in unique_domains:
    domain_df = df[df["domain"] == domain]
    fig, ax = plt.subplots(figsize=(10, 6))

    for strategy in style_order:
        raw_labels = [k for k, v in label_name_map.items() if v == strategy]
        strategy_df = domain_df[domain_df["label"].isin(raw_labels)].sort_values(by="model_id")

        if strategy_df.empty:
            continue

        x = range(1, len(strategy_df) + 1)
        y = strategy_df["model_id"].values

        ax.plot(
            x,
            y,
            label=strategy,
            linestyle=line_styles[strategy],
            marker=markers[strategy],
            color=colors[strategy],
            linewidth=5,
            markersize=6,
        )

    ax.set_xlabel("Novelty #", fontsize=27)
    ax.set_ylabel("Instances #", fontsize=27)
    ax.tick_params(axis='both', which='major', labelsize=24)
    ax.xaxis.set_major_locator(mticker.MaxNLocator(integer=True))
    ax.grid(True)
    fig.tight_layout()

    SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
    save_dir = os.path.abspath(os.path.join(SCRIPT_DIR, '..', '..', 'plots', 'cactus_plots'))
    os.makedirs(save_dir, exist_ok=True)

    out_path = os.path.join(save_dir, f"cactus_{domain}_learned_model_id.png")
    plt.savefig(out_path)
    plt.close()
    print(f" Saved domain cactus plot to '{out_path}'")
