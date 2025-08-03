import matplotlib.pyplot as plt
import os
import itertools


def plot_from_dict(data_dict, plot_title, filename, novelty_intro_idx=None):
    plt.figure(figsize=(10, 6))

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

    # Create unique combinations: (dash, marker, color)

    for i, (legend, (values, novelty_learned_idx)) in enumerate(data_dict.items()):
        x_vals = list(range(len(values)))
        linestyle = dash_styles[i % len(dash_styles)]  # cycle dash pattern
        marker = markers[i % len(markers)]  # cycle marker
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

        # Vertical novelty learned marker with matching dash style
        if novelty_learned_idx != -1:
            plt.axvline(
                x=novelty_learned_idx,
                linestyle=linestyle,
                color=color,
                alpha=0.7,
                linewidth=2,
                label=f'novelty learned ({legend})'
            )

    # Global novelty introduced line (standard red dashed)
    if novelty_intro_idx is not None:
        plt.axvline(
            x=novelty_intro_idx,
            color='black',
            linestyle='--',
            linewidth=2,
            label='novelty introduced'
        )

    plt.xlabel('problem_id')
    plt.ylabel('number of problems solved so far')
    plt.title(plot_title)
    plt.legend()
    plt.grid(True)
    plt.tight_layout()

    # Save the figure
    save_dir = r"C:\newProject\results"
    os.makedirs(save_dir, exist_ok=True)
    save_path = os.path.join(save_dir, filename + ".png")
    plt.savefig(save_path)

    #plt.show()
