import os
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D

# Strategies shown in each plot type of moving_graphs_plotter.py
legend_strategies = {
    # easy / medium / hard plots
    "difficulty": [
        "NoRepair",
        "Changed Variables",
        "Linear",
        "k-Degree",
        "Ensemble - No-SC",
    ],
    # lv1 / lv2 plots of the signature change experiments
    "signature_change": [
        "NoRepair",
        "Ensemble - No-SC",
        "Ensemble - BF-SC",
        "Ensemble - MILP-SC",
    ],
}

# Same per-strategy style order as moving_graphs_plotter.py, so each strategy has one style in every plot
strategy_style_order = [
    "NoRepair", "Changed Variables", "Linear", "k-Degree",
    "Ensemble - No-SC", "Ensemble - BF-SC", "Ensemble - MILP-SC"
]

# Same styles as moving_graphs_plotter.py
dash_styles = [
    (1, (5, 2)), (2, (2, 6)), (0, (1, 3)), (3, (4, 4, 1, 4)),
    (1, (3, 2, 1, 2)), (2, (5, 1, 2, 1)), (0, (1, 1)), (3, (2, 4))
]
markers = ['s', '^', 'D', '*', 'x', 'P', 'v', '<', '>']
colors = ['g', 'r', 'c', 'y', 'm', 'k', '#ff7f0e', '#2ca02c', '#9467bd']

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

for legend_name, strategy_order in legend_strategies.items():
    # Create dummy figure
    fig, ax = plt.subplots(figsize=(12, 2))
    ax.axis('off')

    # Create custom legend handles
    handles = []
    for label in strategy_order:
        i = strategy_style_order.index(label)
        handle = Line2D(
            [0], [0],
            color=colors[i % len(colors)],
            linestyle=dash_styles[i % len(dash_styles)],
            marker=markers[i % len(markers)],
            linewidth=2.5,
            markersize=10,
            label=label
        )
        handles.append(handle)

    # Create horizontal legend
    ax.legend(
        handles=handles,
        loc='center',
        ncol=len(handles),
        fontsize=20,
        frameon=False,
        borderpad=1.2,
        handlelength=3,
        columnspacing=2.0,
    )

    # Save just the legend as image
    save_path = os.path.join(SCRIPT_DIR, f"legend_{legend_name}.png")
    plt.savefig(save_path, bbox_inches='tight', dpi=300)
    plt.close()
    print(f"created legend {save_path}")
