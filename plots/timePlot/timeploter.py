import pandas as pd
import matplotlib.pyplot as plt
import ast
import os

# Path configuration
base_dir = "results_csv"
fname = os.path.join("../../", base_dir, "minecraftNew_4_data.csv")

if os.path.exists(fname):
    df = pd.read_csv(fname)

    plt.figure(figsize=(12, 7))

    plot_count = 0  # Track if we actually plot anything

    for index, row in df.iterrows():
        # Ensure label is a string and not empty
        label_text = str(row['Label']) if pd.notnull(row['Label']) else f"Row {index}"
        raw_times = row['execute & repair time']

        try:
            # Parse the list
            times_list = ast.literal_eval(raw_times)

            if isinstance(times_list, tuple) and len(times_list) > 0:
                # We explicitly set the label here
                plt.plot(times_list, marker='o', label=label_text, alpha=0.8, linewidth=1.5)
                plot_count += 1

        except Exception as e:
            print(f"Skipping row {index} ({label_text}) due to parsing error: {e}")

    # Graph styling
    plt.title("Comparative Execution & Repair Times", fontsize=14)
    plt.xlabel("Repair Event Index", fontsize=12)
    plt.ylabel("Time (seconds)", fontsize=12)
    plt.grid(True, linestyle='--', alpha=0.5)

    # Only show legend if we actually have labeled data
    if plot_count > 0:
        plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.)
    else:
        print("Warning: No data was plotted. Check if 'execute & repair time' column is empty.")

    plt.tight_layout()
    plt.show()
    plt.savefig('plot_time.png')

else:
    print(f"File not found: {fname}")