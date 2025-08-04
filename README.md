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
├── plots/                                # Generated evaluation plots
│   ├── cactus_plots/                     # Cactus plots per domain/novelty, Includes the Plotter 
│   ├── csv_in_plot/                      # CSVs used during plotting
│   ├── legend/                           # Legend info for plots, Includes the Plotter 
│   └── moving_graph_plots/              # Moving average performance graphs, Includes the Plotter 
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

```bash
# Environment:
# - Python 3.10.16
# - pip 24.0

# 1. Extract the ZIP archive
$ unzip Felix.zip
$ cd Felix

# 2. (Optional) Create a virtual environment

## Option A: Using venv (standard Python virtual environment)
$ py -3.10 -m venv venv

### On Unix/macOS:
$ source venv/bin/activate

### On Windows:
> venv\Scripts\activate

## Option B: Using conda
$ conda create -n felix_env python=3.10
$ conda activate felix_env

# 3. Install dependencies
$ pip install -r requirements.txt


```

---

## Running Experiments
Important: Always run these commands from inside the Felix folder (project root)
```bash
# Run all novelties for a domain
$ python -m solution.main minecraft all

# Run a specific novelty (note there are 1 to 9 novelties)
$ python -m solution.main minecraft 3 

# Run novelties starting from a given index
$ python -m solution.main minecraft from 5
```

Output results will be stored in:

* `results_csv/` → Raw per-run data

---

## Plotting Results

To generate moving graph and cactus plots for every domain run from `results_csv` data:

Important: Always run these commands from inside the Felix folder (project root)
```bash
$ python -m plots.moving_graph_plots.moving_graphs_plotter

$ python -m plots.cactus_plots.cactus_plotter
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
