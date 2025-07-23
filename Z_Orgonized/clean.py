import os

def remove_domain_2025_files(*folders):
    for folder in folders:
        if not os.path.isdir(folder):
            print(f"Skipped: '{folder}' is not a valid directory.")
            continue

        for filename in os.listdir(folder):
            if filename.startswith("domain_2025"):
                filepath = os.path.join(folder, filename)
                try:
                    os.remove(filepath)
                    print(f"Deleted: {filepath}")
                except Exception as e:
                    print(f"Failed to delete {filepath}: {e}")

# Example usage:
# replace these with your actual folder paths
folder1 = r"C:\newProject\ipc2023-dataset\minecraft"
folder2 = r"C:\newProject\ipc2023-dataset\expedition"
folder3 = r"C:\newProject\ipc2023-dataset\drone"
folder4 = r"C:\newProject\ipc2023-dataset\sailing"

remove_domain_2025_files(folder1, folder2, folder3, folder4)
