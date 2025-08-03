
from Z_Orgonized.Utilities.config import ErrorFlag, Config


import sys, os; sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from nyx import nyx
import sys
import os
import contextlib

@contextlib.contextmanager
def suppress_stdout():
    with open(os.devnull, 'w') as fnull:
        old_stdout = sys.stdout
        sys.stdout = fnull
        try:
            yield
        finally:
            sys.stdout = old_stdout

# Usage


class Planner:
    def __init__(self, plan):
        self.NYX_path = Config.NYX_PATH
        self.error_flag = ErrorFlag.NO_ERROR
        self.plan = plan



    def create_plan(self) -> bool:
        domain_path = Config.domain_path
        problem_path = Config.problem_path
        plan_path = Config.plan_path

        with suppress_stdout():
            if Config.domain_name == "drone":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:gbfs", "custom_heuristic:3"])
            if Config.domain_name == "expedition":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:gbfs", "custom_heuristic:1"])
            if Config.domain_name == "sailing":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:gbfs", "custom_heuristic:2"])
            if Config.domain_name == "minecraft":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:bfs"])

        if not os.path.isfile(plan_path):
            return False
        self.parse_action_log(plan_path)
        return True

    def parse_action_log(self, plan_path):
        times = []
        actions = []

        with open(plan_path, 'r') as file:
            for line in file:
                line = line.strip()
                if not line:
                    continue  # skip empty lines

                # Split the line into time and the rest
                time_part, rest = line.split(":", 1)
                time_str = time_part.strip()
                action_str = rest.strip().split("\t")[0]  # exclude the [0] part

                # Append parsed time and action
                times.append(float(time_str))
                actions.append(f"({' '.join(action_str.split())})")

        self.plan.setUpPlan(times, actions)