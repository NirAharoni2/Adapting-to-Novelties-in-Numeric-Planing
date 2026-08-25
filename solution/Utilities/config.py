import os
from enum import Enum
from datetime import datetime
from pathlib import Path


class ErrorFlag(Enum):
    NO_ERROR = 0
    ERROR = -1
    FOUND_BY_SHORTEN = 0.5
    NO_SOLUTION = 1
    TIMEOUT = 2
    INVALID_PLAN = 3

class Config:
    # Base Paths

    # Automatically resolve the base path (project root)
    checkSignature = False
    BASE_DIR = Path(__file__).resolve().parents[2]  # two levels up from config.py

    # Construct paths relative to the project root
    BASE_PATH = BASE_DIR / "nyx"
    DOMAINS_PATH = BASE_DIR / "dataset"
    ADD_PARAMETERS = True
    ENHSP_PATH = f"{BASE_PATH}/ENHSP"
    METRIC_FF_PATH = f"{BASE_PATH}/METRIC_FF"
    NYX_PATH = f"{BASE_PATH}/nyxMain"
    NSAM_PATH = f"{BASE_PATH}/sam_learning"
    VALIDATOR_DIRECTORY = f"{BASE_PATH}/VAL"

    # Active domain/problem (can be changed globally)
    seed = 0
    domain_path = ""
    problem_path = ""
    plan_path = ""
    time = datetime.now().strftime("%Y%m%d_%H%M%S")
    domain_name = ""
    next = False

    @classmethod
    def get_results_csv_dir(cls):
        return cls.BASE_DIR / "results_csv"
    @classmethod
    def get_database_dir(cls):
        return cls.BASE_DIR / "dataset"
    @classmethod
    def get_csv_in_plot_dir(cls):
        return cls.BASE_DIR / "plots" / "csv_in_plot"

    @classmethod
    def update_time(cls):
        cls.time = datetime.now().strftime("%Y%m%d_%H%M%S")

    @classmethod
    def update_domain(cls, domain_name):
        cls.domain_name = domain_name
        cls.domain_path = fr"{cls.DOMAINS_PATH}/{domain_name}/domain_{cls.time}.pddl"
        cls.problem_path = None

    @classmethod
    def get_domain(cls):
        return cls.domain_path

    @classmethod
    def update_instance_path(cls, i):
        base_dir = Path(cls.domain_path).parent / "instances"
        #here do receive j   cls.problem_path = base_dir / f"seed_{j}" / f"pfile{i}.pddl"
        cls.problem_path = base_dir / f"seed_{cls.seed}" / f"pfile{i}.pddl"


    @classmethod
    def update_plan_path(cls, i):
        cls.plan_path = Path(cls.domain_path).parent / "instances" / f"seed_{cls.seed}" / "plans" / f"plan1_pfile{i}.pddl"

    @classmethod
    def update_domain_to_be_env_domain(cls, domain_name,novelty_id):
        cls.domain_name = domain_name
        cls.domain_path = fr"{cls.DOMAINS_PATH}/{domain_name}/novelty_domain_{novelty_id}.pddl"
        cls.problem_path = None

    @classmethod
    def getOriginalDomain(cls):
        return cls.BASE_DIR / "dataset" / cls.domain_name / "domain_world.pddl"

    @classmethod
    def setContinue(cls, state):
        cls.next = state

    @classmethod
    def set_seed(cls, seed):
        cls.seed = seed
