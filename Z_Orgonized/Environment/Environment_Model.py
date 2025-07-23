from pathlib import Path

from Z_Orgonized.Utilities.config import Config


class Environment_Model:
    def __init__(self, domain_name):
        self.domain_name = domain_name
        self.model_path = Path(fr"{Config.DOMAINS_PATH}\{self.domain_name}\domain_world.pddl")

    def get_model_path(self):
        return self.model_path

    def get_problem_path(self,i):
        base_dir = self.model_path.parent / "instances"
        problem_path = base_dir / f"pfile{i}.pddl"
        return problem_path

    def injectNovelty(self,novelty_id):
        self.model_path = Path(fr"{Config.DOMAINS_PATH}\{self.domain_name}\novelty_domain_{novelty_id}.pddl")

    def returnToNoNovelty(self):
        self.model_path = Path(fr"{Config.DOMAINS_PATH}\{self.domain_name}\domain_world.pddl")
