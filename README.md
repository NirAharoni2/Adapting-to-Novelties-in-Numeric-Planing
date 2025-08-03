# Robust PDDL Agent with Learning-Based Domain Repair

This project simulates an agent that plans and acts in PDDL-based environments, detects when the domain model becomes inaccurate (due to novelty), and autonomously repairs its model to continue performing effectively.

## Features

* Integration with NYX planner for action planning.
* PDDL2Gym simulator for interactive execution.
* Novelty injection and automatic detection.
* Multiple repair strategies using linear regression.
* Auto-updates to domain models in response to failures.
* Cactus plots and moving averages for visual analysis.

---

## Project Structure

```
Felix/
├── ipc2023-dataset/                       # PDDL domains and problem instances (original + novelty)
│   ├── expedition/                        # Domain-specific folder
│   │   ├── domain_world.pddl             # Original domain model
│   │   ├── novelty_domain_1.pddl         # Novelty-induced domain model (example)
│   │   ├── ...                           # ... up to novelty_domain_9.pddl
│   │   ├── novelties.txt                 # Description of each novelty
│   │   └── instances/                    # PDDL problem instances
│   │       ├── pfile1.pddl               # Base problems
│   │       ├── ...                       # ... up to novelty_domain_50.pddl
│   │       ├── pfile51.pddl             # Later problems include new functions
│   │       ├── ...                      # ... up to novelty_domain_100.pddl
│   │       └── expeditionGenerator.py   # Generator for instances
│   ├── drone/                            # Same structure as expedition
│   ├── sailing/                          # Same structure as expedition
│   └── minecraft/                        # Same structure as expedition
│
├── nyx/                                  # NYX planner for PDDL planning
├── PDDL2Gym/                             # Gym-like simulator for PDDL environments
├── plots/                                # Generated evaluation plots (cactus & moving graphs)
├── results_csv/                          # Output CSVs from evaluation runs
├── solution/                             # Our main folder. Contains core logic for planning, repair, simulation, and evaluation
│   ├── baseAgent/                        # Agent logic and planning interface
│   │   ├── Base_Agent.py                # Main agent controller
│   │   ├── Planner.py                   # NYX wrapper and plan formatter
│   │   └── Plan.py                      # Step-based plan management
│   │
│   ├── DiagnoseAndRepair/               # Domain model repair logic
│   │   ├── DiagnoseAndRepair.py         # Orgnizes the interaction between Monitor, Repair and Base_Agent
│   │   ├── Monitor.py                   # Simulator-based mismatch detection
│   │   └── Repair.py                    # Linear regression repair models
│   │
│   ├── Environment/                     # Simulator interaction layer
│   │   ├── Enviroment.py                # Main environment simulation runner
│   │   └── Environment_Model.py         # Paths and novelty toggling
│   │
│   ├── plotters/                        # Plot generation scripts
│   │   ├── cactus_plotter.py            # Cactus plots per domain
│   │   └── moving_graphes_plotter.py    # Moving average plots
│   │
│   ├── Utilities/                       # Config and shared tools
│   │   ├── config.py                    # File path and config manager
│   │   ├── Score.py                     # Evaluation plotter helper, show the data for each csv in a graph
│   │   └── compare_files.py             # Domain diff checker, used to check if we learned the novelty.
│   │   └── parsedModel.py               # Parse the domain and updtaes it
│   │
│   └── main.py                          # Main entry point for full evaluation
│
├── README.md                             # You are here!
```

---

## ⚙️ Installation & Setup

> 🗂️ This project is distributed as a ZIP file. No need to clone a Git repository.

```bash
# 1. Extract the ZIP archive
$ unzip Felix.zip
$ cd Felix

# 2. (Optional) Create a virtual environment
$ python -m venv venv
$ source venv/bin/activate  # On Windows: venv\Scripts\activate

# 3. Install dependencies
$ pip install -r requirements.txt

```

---

## Running Experiments

```bash
# Run all novelties for a domain
$ python solution/main.py minecraft all

# Run a specific novelty
$ python solution/main.py minecraft 3

# Run novelties starting from a given index
$ python solution/main.py minecraft from 5
```

Output results will be stored in:

* `results_csv/` → Raw per-run data

---

## Plotting Results

To generate summary plots from `results_csv` data:

```bash
$ python solution/plotters/cactus_plotter.py
$ python solution/plotters/moving_graphes_plotter.py
```

---

## \ Repair Methods Used and baselines

| ID | Method         | Description                              |
|----| -------------- |------------------------------------------|
| -- | Oracle         | Oracle model (no novelty)                |
| -- | No Repair      | Reuses broken model, no fix applied      |
| 1  | Rel. Variables | Repair using relevant variables only     |
| 2  | All Variables  | Repair using all variables               |
| 3  | All Monomials  | Includes polynomial combinations (deg 2) |
| 4  | Adaptive       | Chooses best-fitting model per input var |

---

## 📜 Notes

* The environment will **inject novelty** automatically at instance 1 (or 51 for some novelties) and test on the 50 next instances (including the instance injected).
* Evaluation tracks success ratios, plots learning curves, and records when the relevant repair updated the model correctly to represent the novelty.

---

## 🤝 Acknowledgments

* IPC2023 dataset: [https://github.com/ipc2023-numeric/ipc2023-dataset](https://github.com/ipc2023-numeric/ipc2023-dataset)
* NYX planner: [https://gitlab.com/wmgp9/nyx](https://gitlab.com/wmgp9/nyx)
---
