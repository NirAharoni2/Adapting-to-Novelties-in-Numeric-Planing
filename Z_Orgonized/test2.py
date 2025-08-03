import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import seaborn as sns

# Map from raw label in CSV to display name
label_name_map = {
    "base": "Base",
    "no repair": "No Repair",
    "repair1": "Rel. Variables",
    "repair2": "All Variables",
    "repair3": "All Monomials",
    "repair4": "Adaptive",
}

# Final display order
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

# Load combined data
df = pd.read_csv("compiled_model_ids.csv")

# Drop rows with missing model_id
df = df.dropna(subset=["model_id"])
df["model_id"] = df["model_id"].astype(float)

# Extract domain from 'source' column
df["domain"] = df["source"].apply(lambda s: s.split("_")[0])

# Get unique domains
domains = df["domain"].unique()

# Plot one cactus plot per domain
for domain in domains:
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
    #ax.legend(fontsize=20, title_fontsize=22)
    ax.xaxis.set_major_locator(mticker.MaxNLocator(integer=True))
    ax.grid(True)
    fig.tight_layout()

    # Save per-domain plot
    out_path = f"cactus_{domain}_learned_model_id.png"
    plt.savefig(out_path)
    plt.close()
    print(f"Saved domain cactus plot to '{out_path}'")
