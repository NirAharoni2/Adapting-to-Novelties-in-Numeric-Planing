import matplotlib.pyplot as plt
from matplotlib.lines import Line2D

# All strategies in the order they are plotted in moving_graphs_plotter.py (Oracle is not plotted),
# so each one gets the same style as in the graphs
strategy_order = [
    "NoRepair",
    "Changed Variables",
    "Linear",
    "k-Degree",
    "Ensemble - No-SC",
    "Ensemble - BF-SC",
    "Ensemble - MILP-SC",
]

# Same styles as moving_graphs_plotter.py
dash_styles = [
    (1, (5, 2)), (2, (2, 6)), (0, (1, 3)), (3, (4, 4, 1, 4)),
    (1, (3, 2, 1, 2)), (2, (5, 1, 2, 1)), (0, (1, 1)), (3, (2, 4))
]
markers = ['s', '^', 'D', '*', 'x', 'P', 'v', '<', '>']
colors = ['g', 'r', 'c', 'y', 'm', 'k', '#ff7f0e', '#2ca02c', '#9467bd']

# Create dummy figure
fig, ax = plt.subplots(figsize=(12, 2))
ax.axis('off')

# Create custom legend handles
handles = []
for i, label in enumerate(strategy_order):
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
plt.savefig("legend_horizontal_line.png", bbox_inches='tight', dpi=300)
plt.close()
