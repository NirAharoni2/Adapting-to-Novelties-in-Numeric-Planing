import os
from enum import Enum
from pathlib import Path
from datetime import datetime


class ErrorFlag(Enum):
    NO_ERROR = 0
    ERROR = -1
    FOUND_BY_SHORTEN = 0.5
    NO_SOLUTION = 1
    TIMEOUT = 2
    INVALID_PLAN = 3

class Config:
    # Base Paths
    BASE_NYX_PATH = "C:/studies/github/project"
    DOMAINS_PATH = r"C:\newProject\ipc2023-dataset"
    ENHSP_PATH = f"{BASE_NYX_PATH}/ENHSP"
    METRIC_FF_PATH = f"{BASE_NYX_PATH}/METRIC_FF"
    NYX_PATH = f"{BASE_NYX_PATH}/nyxMain"
    NSAM_PATH = f"{BASE_NYX_PATH}/sam_learning"
    VALIDATOR_DIRECTORY = f"{BASE_NYX_PATH}/VAL"

    # Active domain/problem (can be changed globally)
    domain_path = ""
    problem_path = ""
    plan_path = ""
    time = datetime.now().strftime("%Y%m%d_%H%M%S")
    domain_name = ""

    @classmethod
    def update_domain(cls, domain_name):
        cls.domain_name = domain_name
        cls.domain_path = fr"{cls.DOMAINS_PATH}\{domain_name}\domain_{cls.time}.pddl"
        cls.problem_path = None

    @classmethod
    def get_domain(cls):
        return cls.domain_path

    @classmethod
    def update_instance_path(cls, i):
        base_dir = Path(cls.domain_path).parent / "instances"
        cls.problem_path = base_dir / f"pfile{i}.pddl"


    @classmethod
    def update_plan_path(cls, i):
        base_dir = Path(cls.domain_path).parent / "instances"

        cls.plan_path = os.path.join(base_dir, "plans", f"plan1_pfile{i}.pddl")

    @classmethod
    def update_domain_to_be_env_domain(cls, domain_name,novelty_id):
        cls.domain_name = domain_name
        cls.domain_path = fr"{cls.DOMAINS_PATH}\{domain_name}\novelty_domain_{novelty_id}.pddl"
        cls.problem_path = None
