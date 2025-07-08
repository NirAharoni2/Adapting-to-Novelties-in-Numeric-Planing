import config as CONFIG
from config import ErrorFlag
import subprocess

import os
from pathlib import Path

import re


class NYX:
    """
    NYX planner wrapper for PDDL
    Where NYX_PATH must be updated in the config.py file in order to work
    """

    def __init__(self):
        self.path = CONFIG.NYX_PATH
        self.error_flag = ErrorFlag.NO_ERROR

    def create_plan(
        self, domain: str, problem: str, timeout: int = 60, flag: str = ""
    ) -> list:
        """
        Create a plan for the given domain and problem
        :param domain: the domain file - must be located in the planning folder
        :param problem: the problem file - must be located in the planning folder
        :param timeout: the timeout for the planner in seconds
        """

        self.error_flag = ErrorFlag.NO_ERROR

        domain = Path(domain).absolute()
        problem = Path(problem).absolute()

        # Check if the domain and problem files exist
        if not os.path.exists(domain):
            raise Exception("Domain file not found")
        if not os.path.exists(problem):
            raise Exception("Problem file not found")

        original_dir = os.getcwd()
        os.chdir(self.path)

        cmd = f"python nyx.py {domain} {problem} -search:bfs"
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

        plan = []

        for line in planner.stdout:
            decoded_line = line.decode().strip()

            if "explored states" in decoded_line:
                index = decoded_line.index("explored states:") + len("explored states:")
                self.explored_states = int(decoded_line[index:].strip())

            if "===== Plan ======================================" in decoded_line:
                # Skip "Plan File: ..." line
                planner.stdout.readline()
                planner.stdout.readline()

                # Read plan lines until an empty line
                while True:
                    line = planner.stdout.readline().decode().strip()
                    if line == "":
                        break
                    try:
                        match = re.search(r":\s*(.*?)\s*\[", line)
                        if match:
                            action = match.group(1)
                            match2 = re.match(r'(\w+)\((.*?)\)', action)
                            if match2:
                                name = match2.group(1)
                                args = match2.group(2).replace(',', ' ')
                                action = f'{name} {args}'
                            plan.append(f"({action.lower()})")
                    except Exception as e:
                        pass
                break

            elif "No Plan Found!" in decoded_line:
                self.error_flag = ErrorFlag.NO_SOLUTION
                break

        planner.kill()

        return plan

    def create_simulation(
        self, domain: str, problem: str, plan: str, timeout: int = 60, flag: str = ""
    ) -> list:
        """
        Create a plan for the given domain and problem
        :param domain: the domain file - must be located in the planning folder
        :param problem: the problem file - must be located in the planning folder
        :param timeout: the timeout for the planner in seconds
        """

        self.error_flag = ErrorFlag.NO_ERROR

        domain = Path(domain).absolute()
        problem = Path(problem).absolute()
        plan = Path(plan).absolute()
        # Check if the domain and problem files exist
        if not os.path.exists(domain):
            raise Exception("Domain file not found")
        if not os.path.exists(problem):
            raise Exception("Problem file not found")
        if not os.path.exists(plan):
            raise Exception("plan file not found")
        original_dir = os.getcwd()
        os.chdir(self.path)

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

