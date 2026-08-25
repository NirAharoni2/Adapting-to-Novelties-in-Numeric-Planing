import matplotlib.pyplot as plt
from matplotlib.lines import Line2D

# Define labels and styles
repairName = {
    "base domain - no repair": "Base domain with no repair",
    "all monomials repair": "All Monomials Repair",
    "adaptive repair base": "Adaptive Selection Repair",
    "adaptive repair + support for signature change": "Adaptive Selection with Signature Repair",
    #"adaptive repair + support for signature change with milp": "Adaptive Selection with Signature Repair with milp",
}

dash_styles = [
    (5, 2),      # No Repair
    (1, 3),      # Rel. Variables
    (2, 6),      # All Variables
    (4, 4, 1, 4),# All Monomials
    (3, 2, 1, 2) # Adaptive
]

markers = ['s', '^', 'D', '*', 'x', 'P', 'v', '<', '>']
colors = ['g', 'r', 'c', 'y', 'm', 'k', '#ff7f0e', '#2ca02c', '#9467bd']

# Create dummy figure
fig, ax = plt.subplots(figsize=(12, 2))
ax.axis('off')

# Create custom legend handles
handles = []
for i, (key, label) in enumerate(repairName.items()):
    handle = Line2D(
        [0], [0],
        color=colors[i],
        linestyle=(0, dash_styles[i]),
        marker=markers[i],
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
