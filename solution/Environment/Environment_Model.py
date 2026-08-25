from pathlib import Path
from solution.Utilities.config import Config


class Environment_Model:
    """
    Handles the management of domain and problem files for a PDDL-based environment.

    This class abstracts the file paths for standard, novel, and instance-specific
    domain/problem definitions used in simulations.

    Attributes:
        domain_name (str): The name of the PDDL domain (e.g., "drone", "sailing").
        model_path (Path): Path to the current domain file (can be standard or novelty).
    """

    def __init__(self, domain_name):
        """
        Initializes the environment model with a default domain path.

        Args:
            domain_name (str): Name of the domain to load.
        """
        self.domain_name = domain_name
        self.model_path = Path(fr"{Config.DOMAINS_PATH}/{self.domain_name}/domain_world.pddl")

    def get_model_path(self):
        """
        Returns the current domain file path (standard or novelty).

        Returns:
            Path: The path to the active domain PDDL file.
        """
        return self.model_path

    def get_problem_path(self, i):
        """
        Returns the path to the ith problem instance of the domain.

        Args:
            i (int): Problem index.

        Returns:
            Path: Path to the problem instance file.
        """
        return Config.problem_path

    def injectNovelty(self, novelty_id):
        """
        Switches the domain model to a novelty version.

        Args:
            novelty_id (int): Identifier of the novelty to inject.
        """
        self.model_path = Path(fr"{Config.DOMAINS_PATH}/{self.domain_name}/novelty_domain_{novelty_id}.pddl")

    def returnToNoNovelty(self):
        """
        Reverts the domain model back to the original (non-novel) version.
        """
        self.model_path = Path(fr"{Config.DOMAINS_PATH}/{self.domain_name}/domain_world.pddl")
