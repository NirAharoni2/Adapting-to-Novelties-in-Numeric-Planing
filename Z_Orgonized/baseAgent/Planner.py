from Z_Orgonized.baseAgent.Plan import Plan

from Z_Orgonized.Utilities.config import ErrorFlag
from Z_Orgonized.Utilities import config as CONFIG
import subprocess
import os
from pathlib import Path

import sys, os; sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from nyx import simulator

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
        self.NYX_path = CONFIG.NYX_PATH
        self.error_flag = ErrorFlag.NO_ERROR
        self.plan = plan



    def create_plan(
        self, domain: str, problem: str, timeout: int = 60, flag: str = ""
    ) -> list:

        with suppress_stdout():
            nyx.runner(domain, problem, [])

        number = ''.join(filter(str.isdigit, os.path.basename(problem)))
        plan_path = os.path.join(os.path.dirname(problem), "plans", f"plan1_pfile{number}.pddl")
        self.create_simulation(domain, problem, plan_path)
        self.parse_action_log(plan_path)

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


    def create_simulation(
        self, domain: str, problem: str, plan: str, timeout: int = 60, flag: str = ""
    ) -> list:
        """
        Create a plan for the given domain and problem
        :param domain: the domain file - must be located in the planning folder
        :param problem: the problem file - must be located in the planning folder
        :param timeout: the timeout for the planner in seconds
        """

        simulator.simulator(domain, problem,plan, [])
'''
        self.error_flag = ErrorFlag.NO_ERROR


        # Check if the domain and problem files exist
        if not os.path.exists(domain):
            raise Exception("Domain file not found")
        if not os.path.exists(problem):
            raise Exception("Problem file not found")
        if not os.path.exists(plan):
            raise Exception("plan file not found")
        original_dir = os.getcwd()
        os.chdir(self.NYX_path)

        cmd = f"python simulator.py {domain} {problem} {plan}"
        if flag:
            cmd += f" {flag}"

        planner = subprocess.Popen(
            cmd,
            shell=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )

        try:
            planner.wait(timeout=timeout)
        except subprocess.TimeoutExpired:
            # print(f"Can't find a plan in {timeout} seconds")
            planner.kill()
            self.error_flag = ErrorFlag.TIMEOUT
            return []
        finally:
            os.chdir(original_dir)

        exception_flag = None
        for exception_flag in planner.stderr:
            print(f"Exception: {exception_flag}")
            # break
        if exception_flag:
            planner.kill()
            self.error_flag = ErrorFlag.ERROR
            raise Exception(f"unknowned error for {domain} {problem}")


        for line in planner.stdout:
            decoded_line = line.decode().strip()


        planner.kill()
'''