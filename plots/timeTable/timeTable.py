import pandas as pd
import matplotlib.pyplot as plt
import ast
import os

# Adjust these to match your local setup
base_dir = "results_csv"
fname = os.path.join("../../", base_dir, "minecraftNew_5_data.csv")

if os.path.exists(fname):
    df = pd.read_csv(fname)

    # Iterate through each row to create individual plots
    for index, row in df.iterrows():
        label = row['Label']
        raw_times = row['execute & repair time']

        try:
            # Convert string representation of list to a Python list
            times_list = ast.literal_eval(raw_times)

            if isinstance(times_list, list) and len(times_list) > 0:
                plt.figure(figsize=(10, 4))
                plt.plot(times_list, marker='o', color='#e67e22', linewidth=2)

                plt.title(f"Repair Time Progression: {label}", fontsize=14)
                plt.xlabel("Repair Event Index", fontsize=12)
                plt.ylabel("Time (seconds)", fontsize=12)
                plt.grid(True, linestyle='--', alpha=0.5)

                plt.tight_layout()
                plt.show()
            else:
                print(f"Skipping {label}: No time data found.")

        except Exception as e:
            print(f"Could not plot row {index} ({label}): {e}")
else:
    print(f"CSV file not found at {fname}. Please check your file path.")