import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load data
df = pd.read_csv('aggregated_drone_times.csv')

# 1. Prepare Base Domain and Source
df['Base Domain'] = df['Domain'].str.replace('New', '').str.capitalize()
df['Source'] = df['Domain'].apply(lambda x: 'New' if 'New' in x else 'Original')

# 2. Filter for specific labels (Oracle and Adaptive with Sig)
target_labels = ['oracle', 'adaptive repair + support for signature change']
df_filtered = df[df['Label'].isin(target_labels)].copy()


# 3. Apply the specific row mapping requested
def map_row_label(row):
    lvl = row['Level']
    src = row['Source']
    if src == 'Original':
        if 'Level 1' in lvl: return 'easy'
        if 'Level 2' in lvl: return 'medium'
        if 'Level 3' in lvl: return 'hard'
    else:  # Source is New
        if 'Level 1' in lvl: return 'lv. 1'
        if 'Level 2' in lvl: return 'lv. 2'
    return None


df_filtered['New Row Label'] = df_filtered.apply(map_row_label, axis=1)
df_filtered = df_filtered.dropna(subset=['New Row Label'])

# Define row order for the plot
row_order = ["easy", "medium", "hard", "lv. 1", "lv. 2"]
df_filtered['New Row Label'] = pd.Categorical(df_filtered['New Row Label'], categories=row_order, ordered=True)
df_filtered = df_filtered.sort_values(['New Row Label'])

# 4. Melt Planning and Exec for side-by-side plotting
df_melted = df_filtered.melt(
    id_vars=['Base Domain', 'New Row Label', 'Label'],
    value_vars=['Avg Planning', 'Avg Exec & Repair'],
    var_name='Metric',
    value_name='Time'
)

# Rename methods and metrics for visualization
df_melted['Method'] = df_melted['Label'].replace({
    'oracle': 'Oracle',
    'adaptive repair + support for signature change': 'Adaptive + signature'
})
df_melted['Metric'] = df_melted['Metric'].replace({
    'Avg Planning': 'Planning Time',
    'Avg Exec & Repair': 'Exec & Repair Time'
})

# 5. Plotting
domains = sorted(df_melted['Base Domain'].unique())
fig, axes = plt.subplots(len(row_order), len(domains), figsize=(20, 24), sharey='row')

colors = {'Planning Time': '#5DADE2', 'Exec & Repair Time': '#F5B041'}

for i, row_lab in enumerate(row_order):
    for j, domain in enumerate(domains):
        subset = df_melted[(df_melted['Base Domain'] == domain) & (df_melted['New Row Label'] == row_lab)]
        ax = axes[i, j]

        if not subset.empty:
            # Added order=['Oracle', 'Adaptive'] to ensure Oracle is always on the left
            sns.barplot(
                data=subset,
                x='Method',
                y='Time',
                hue='Metric',
                ax=ax,
                palette=colors,
                order=['Oracle', 'Adaptive + signature'],
                edgecolor='black'
            )

        # Titles and Labels
        if i == 0:
            ax.set_title(f"{domain}", fontsize=18, fontweight='bold', pad=25)
        if j == 0:
            ax.set_ylabel(f"{row_lab.upper()}\nTime (s)", fontsize=13, fontweight='bold')
        else:
            ax.set_ylabel("")

        ax.set_xlabel("")
        ax.tick_params(axis='both', which='major', labelsize=11)
        if ax.get_legend() is not None:
            ax.get_legend().remove()
        ax.grid(axis='y', linestyle='--', alpha=0.5)

# Unified Legend - High up
handles, labels = axes[0, 0].get_legend_handles_labels()
fig.legend(handles, labels, loc='upper center', bbox_to_anchor=(0.5, 1.0), ncol=2, fontsize=16, frameon=True)

plt.tight_layout(rect=[0, 0.03, 1, 0.96])
plt.savefig('plot_time.png')
print("Graph saved with fixed column order.")