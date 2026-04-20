import os
import ast
import pandas as pd

# Configurations from your script
domains = ["sailing", "minecraft", "drone", "expedition", "sailingNew", "minecraftNew", "expeditionNew", "droneNew"]
difficulty_map = {
    "Level 1 (1-3)": [1, 2, 3],
    "Level 2 (4-6)": [4, 5, 6],
    "Level 3 (7-9)": [7, 8, 9],
}
base_dir = "results_csv"  # Adjust path as needed (e.g., "../../results_csv")


def parse_and_sum(val):
    try:
        # Convert the string representation of a list into a real list
        data_list = ast.literal_eval(str(val).strip())

        # Calculate average: Sum / Count
        if len(data_list) == 0:
            return 0
        return sum(data_list) / len(data_list)
    except:
        return 0.0


all_results = []

for domain in domains:
    for level_name, indices in difficulty_map.items():
        group_dfs = []
        for i in indices:
            print(i)
            print(domain)
            fname = os.path.join("../../",base_dir, f"{domain}_{i}_data.csv")
            if os.path.exists(fname):
                df = pd.read_csv(fname)
                # Apply parsing to your time columns
                df[f'p_{i}'] = df['planing time'].apply(parse_and_sum)
                df[f'e_{i}'] = df['execute & repair time'].apply(parse_and_sum)
                group_dfs.append(df[['Label', f'p_{i}', f'e_{i}']])

        if group_dfs:
            merged = group_dfs[0]
            for next_df in group_dfs[1:]:
                merged = pd.merge(merged, next_df, on='Label', how='outer')

            merged = merged.fillna(0)
            p_cols = [c for c in merged.columns if 'p_' in c]
            e_cols = [c for c in merged.columns if 'e_' in c]

            # Create the final averages
            res = pd.DataFrame({
                'Domain': domain,
                'Level': level_name,
                'Label': merged['Label'],
                'Avg Planning': merged[p_cols].mean(axis=1),
                'Avg Exec & Repair': merged[e_cols].mean(axis=1)
            })
            all_results.append(res)

if all_results:
    final_table = pd.concat(all_results, ignore_index=True)
    final_table.to_csv('aggregated_drone_times.csv', index=False)
    print("Table created: aggregated_drone_times.csv")