from pathlib import Path

from Z_Orgonized.Utilities import config


class Model:
    def __init__(self, domain_name):
        self.model_path = Path(fr"{config.Domains_path}\{domain_name}\domain.pddl")
        self.problem_path = None

    def get_instance_path(self, i):
        base_dir = self.model_path.parent / "instances"
        self.problem_path = base_dir / f"pfile{i}.pddl"
        return self.problem_path

    def get_model_path(self):
        return self.model_path
