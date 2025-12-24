from solution.Utilities.config import ErrorFlag, Config

import sys, os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from nyx import nyx
import contextlib

@contextlib.contextmanager
def suppress_stdout():
    """
    Context manager to suppress stdout output temporarily.
    Useful to hide verbose planner output during execution.
    """
    with open(os.devnull, 'w') as fnull:
        old_stdout = sys.stdout
        sys.stdout = fnull
        try:
            yield
        finally:
            sys.stdout = old_stdout


class Planner:
    """
    The Planner class is responsible for interfacing with the NYX planner to generate
    a plan based on a domain and problem file. It also parses the resulting plan file
    into time-stamped actions and stores them in a Plan object.

    Attributes:
        NYX_path (str): Path to the NYX planner executable.
        error_flag (ErrorFlag): Status flag for tracking errors (currently unused).
        plan (Plan): A Plan object to be filled with the generated actions and timestamps.
    """

    def __init__(self, plan):
        """
        Initializes the Planner with a reference to a Plan object.

        Args:
            plan (Plan): The plan object where generated actions will be stored.
        """
        self.NYX_path = Config.NYX_PATH
        self.error_flag = ErrorFlag.NO_ERROR
        self.plan = plan

    def create_plan(self) -> bool:
        """
        Invokes the NYX planner with configuration based on the domain.
        Suppresses planner output and parses the generated plan file.

        Returns:
            bool: True if a valid plan file was generated and parsed, False otherwise.
        """
        domain_path = Config.domain_path
        problem_path = Config.problem_path
        plan_path = Config.plan_path
        with suppress_stdout():
            if Config.domain_name == "drone":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:gbfs", "custom_heuristic:3"])
            elif Config.domain_name == "expedition":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:gbfs", "custom_heuristic:1"])
            elif Config.domain_name == "sailing":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:gbfs", "custom_heuristic:2"])
            elif Config.domain_name == "minecraft":
                nyx.runner(domain_path, problem_path, ["-timeout:60", "search:bfs"])

        if not os.path.isfile(plan_path):
            return False

        self.parse_action_log(plan_path)
        return True

    def parse_action_log(self, plan_path):
        """
        Parses a NYX-generated plan file and extracts time-stamped actions into the plan object.

        Args:
            plan_path (str): Path to the plan file to be parsed.
        """
        times = []
        actions = []

        with open(plan_path, 'r') as file:
            for line in file:
                line = line.strip()
                if not line:
                    continue  # Skip empty lines

                # Each line has the format "time: ACTION_NAME \t info"
                time_part, rest = line.split(":", 1)
                time_str = time_part.strip()
                action_str = rest.strip().split("\t")[0]  # Keep only the action, discard optional extra data

                times.append(float(time_str))
                actions.append(f"({' '.join(action_str.split())})")  # Normalize whitespace and format as (action args)

        self.plan.setUpPlan(times, actions)
