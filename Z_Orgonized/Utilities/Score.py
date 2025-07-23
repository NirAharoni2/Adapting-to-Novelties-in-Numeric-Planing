import matplotlib.pyplot as plt
import os


def plot_from_dict(data_dict, plot_title, filename, novelty_intro_idx=None):
    plt.figure(figsize=(10, 6))

    # Various line styles to show different "striped" effects
    line_styles = ['--', '-.']

    for i, (legend, (values, novelty_learned_idx)) in enumerate(data_dict.items()):
        x_vals = range(0, len(values))
        style = line_styles[i % len(line_styles)]

        # Plot the line and get the line object to retrieve its color
        line, = plt.plot(
            x_vals,
            values,
            label=legend,
            linestyle=style,
            linewidth=2.5,
            marker='o'
        )

        line_color = line.get_color()  # Get the color of the plotted line

        # Draw novelty learned line in the same color
        if novelty_learned_idx != -1:
            plt.axvline(
                x=novelty_learned_idx,
                linestyle=style,
                color=line_color,
                alpha=0.7,
                linewidth=2,
                label=f'novelty learned ({legend})'
            )

    # Global novelty introduced line (keep it red)
    if novelty_intro_idx is not None:
        plt.axvline(
            x=novelty_intro_idx,
            color='red',
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
    os.makedirs(save_dir, exist_ok=True)  # Ensure directory exists
    save_path = os.path.join(save_dir, filename + ".png")
    plt.savefig(save_path)

    plt.show()
