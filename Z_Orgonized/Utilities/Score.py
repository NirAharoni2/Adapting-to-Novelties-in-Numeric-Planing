import matplotlib.pyplot as plt

import matplotlib.pyplot as plt

import matplotlib.pyplot as plt


def plot_two_lists(with1, without):
    plt.figure(figsize=(8, 5))

    # Plot the two lists
    plt.plot(range(len(with1)), with1, label='with', marker='o')
    plt.plot(range(len(without)), without, label='without', marker='x')

    # Add a vertical line at index 1
    plt.axvline(x=1, color='red', linestyle='--', label='novelty introduced')

    plt.xlabel('problem_id')
    plt.ylabel('number of problems solved so far')
    plt.title('with repair vs. without repair')
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.show()

