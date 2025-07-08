from enum import Enum


class ErrorFlag(Enum):
    NO_ERROR = 0
    ERROR = -1
    FOUND_BY_SHORTEN = 0.5
    NO_SOLUTION = 1
    TIMEOUT = 2
    INVALID_PLAN = 3

Domains_path = r"C:\newProject\ipc2023-dataset"
Base_nyx_PATH = "C:/studies/github/project"
ENHSP_PATH = f"{Base_nyx_PATH}/ENHSP"
METRIC_FF_PATH = f"{Base_nyx_PATH}/METRIC_FF"
NYX_PATH = f"{Base_nyx_PATH}/nyxMain"
NSAM_PATH = f"{Base_nyx_PATH}/sam_learning"

VALIDATOR_DIRECTORY = f"{Base_nyx_PATH}/VAL"
