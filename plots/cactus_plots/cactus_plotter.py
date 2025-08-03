import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import seaborn as sns

# -------------------------------
# Style and configuration settings
# -------------------------------

# Mapping raw labels (from CSV) to clean, human-readable names
label_name_map = {
    "base": "Base",
    "no repair": "No Repair",
    "repair1": "Rel. Variables",
    "repair2": "All Variables",
    "repair3": "All Monomials",
    "repair4": "Adaptive",
}

# Final plotting order of the strategies
style_order = [
    "Base",
    "No Repair",
    "Rel. Variables",
    "All Variables",
    "All Monomials",
    "Adaptive",
]

# Define line styles, marker styles, and colors for each strategy
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
# Data Loading and Preprocessing
# -------------------------------

# Load the CSV file containing experiment results
df = pd.read_csv("../compiled_model_ids.csv")

# Drop rows with missing 'model_id'
df = df.dropna(subset=["model_id"])
df["model_id"] = df["model_id"].astype(float)

# Extract domain name from 'source' field (e.g., "drone_1_dta.csv" → "drone")
df["domain"] = df["source"].apply(lambda s: s.split("_")[0])

# Identify all unique domains in the dataset
domains = df["domain"].unique()

# -------------------------------
# Plotting per domain
# -------------------------------

# Generate one cactus plot per domain
for domain in domains:
    domain_df = df[df["domain"] == domain]  # Filter data for current domain

    fig, ax = plt.subplots(figsize=(10, 6))

    for strategy in style_order:
        # Get raw labels corresponding to the current display name
        raw_labels = [k for k, v in label_name_map.items() if v == strategy]

        # Filter and sort strategy data by model_id (ascending)
        strategy_df = domain_df[domain_df["label"].isin(raw_labels)].sort_values(by="model_id")

        if strategy_df.empty:
            continue  # Skip if no data for this strategy

        # X-axis: index of novelty (1, 2, 3, ...)
        x = range(1, len(strategy_df) + 1)
        y = strategy_df["model_id"].values

        # Plot the data
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

    # Axis labels and formatting
    ax.set_xlabel("Novelty #", fontsize=27)
    ax.set_ylabel("Instances #", fontsize=27)
    ax.tick_params(axis='both', which='major', labelsize=24)
    ax.xaxis.set_major_locator(mticker.MaxNLocator(integer=True))
    ax.grid(True)
    fig.tight_layout()

    # Save figure to file
    out_path = f"cactus_{domain}_learned_model_id.png"
    plt.savefig(out_path)
    plt.close()
    print(f"Saved domain cactus plot to '{out_path}'")
