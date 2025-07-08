from Planner import NYX
import os

base_path = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
domain = os.path.join(base_path, "ipc2023-dataset", "expedition", "domain.pddl")
problem = os.path.join(base_path, "ipc2023-dataset", "expedition", "instances", "pfile1.pddl")


planner = NYX()

planner.create_plan(domain, problem)
