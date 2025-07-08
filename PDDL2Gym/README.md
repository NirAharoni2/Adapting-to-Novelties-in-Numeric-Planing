<h1 align="center">PDDL2Gym</h2>
<p align="center">
<a href="https://www.python.org/downloads/release/python-31012/"><img alt="Python Version" src="https://img.shields.io/badge/python-3.10-blue"></a>
<a href="https://github.com/psf/black"><img alt="Code style: black" src="https://img.shields.io/badge/code%20style-black-000000.svg"></a>
</p>

A framework for automatically using PDDL domains with the OpenAI Gym API.

This project is a work in progress. It extends the [RAMP PDDL based backend environment](https://github.com/SPL-BGU/PolyPlan) to support any PDDL environment.


# Getting Started

## Dependencies
1. Make sure that Python 3.10 is installed and active (via [virtual environment](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/#creating-a-virtual-environment) or conda environment).
2. Follow the installation of [Sam-Learning](https://github.com/argaman-aloni/sam_learning/tree/6fd9107d0e090b41053767b4da7201af5b188444).
3. pip install all the requirements for this project:
```
python -m pip install -r requirements.txt
```

# Usage

## How to Run Your First Agent

1. **Configure Paths**  
   Open `config.py` and update all necessary file paths and settings to match your environment.

2. **Run the Demo**  
   Execute `demo.py` to start the process.

3. **Set the Interaction Mode**  
   Choose a `play_mode` by setting one of the following options in the configuration:
   - `"rl_learn"` – Running PPO agent (learn then test) while saving trajectories in planning format.
   - `"planning_play"` – Solve the problem using a solver then run it.

# Limitations

1. Slow runtime when checking applicability in large problems.
2. Agents must be retrained if the problem has a different number of fluents or predicates.
3. Large action space – includes all grounded actions, even inapplicable ones.
4. Currently does not support learning from the planning trajectory.
5. Currently does not support manual interaction with the environment.
6. Currently does not support PDDL constants.

# Citations

If you find our work interesting or the repo useful, please consider citing [this paper](https://arxiv.org/abs/2502.13006):
```
@misc{benyamin2025integratingreinforcementlearningaction,
      title={Integrating Reinforcement Learning, Action Model Learning, and Numeric Planning for Tackling Complex Tasks}, 
      author={Yarin Benyamin and Argaman Mordoch and Shahaf S. Shperberg and Roni Stern},
      year={2025},
      eprint={2502.13006},
      archivePrefix={arXiv},
      primaryClass={cs.AI},
      url={https://arxiv.org/abs/2502.13006}, 
}
```