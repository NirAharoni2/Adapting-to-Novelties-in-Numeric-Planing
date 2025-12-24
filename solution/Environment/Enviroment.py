from pathlib import Path
from PDDL2Gym.pddl2gym import PDDL2GYM
from solution.Environment.Environment_Model import Environment_Model
from solution.baseAgent.Planner import suppress_stdout


class Environment:
    """
    The Environment class manages the interaction between an agent and a PDDL-based environment
    using the PDDL2Gym framework. It supports running simulations, injecting novelty, and resetting
    to a baseline configuration.

    Attributes:
        domain_name (str): Name of the domain being used.
        score (int): The cumulative score (typically number of successful episodes).
        environmentModel (Environment_Model): The underlying domain/problem file manager.
        env (PDDL2GYM): The current simulation environment instance.
        agent (Agent): The agent that interacts with the environment.
    """

    def __init__(self, domain_name, agent):
        """
        Initializes the environment wrapper with a domain name and an agent.

        Args:
            domain_name (str): Name of the domain (e.g., "drone", "sailing").
            agent (Agent): The agent instance that will interact with the environment.
        """
        self.domain_name = domain_name
        self.score = 0
        self.environmentModel = Environment_Model(domain_name)
        self.env = None
        self.agent = agent

    def injectNovelty(self, novelty_id):
        """
        Applies a novelty (domain modification) to the current environment model.

        Args:
            novelty_id (int): Identifier for the type of novelty to apply.
        """
        self.environmentModel.injectNovelty(novelty_id)

    def returnToNoNovelty(self):
        """
        Reverts the domain to its original (non-novel) configuration.
        """
        self.environmentModel.returnToNoNovelty()

    def initialize_new_problem_env(self, i):
        """
        Initializes a new problem instance in the simulation environment.

        Args:
            i (int): Index of the problem instance to load.
        """
        self.env = PDDL2GYM(
            self.environmentModel.get_model_path(),
            self.environmentModel.get_problem_path(i),
            max_steps=1000
        )

    def simulate_run(self):
        """
        Simulates an agent's run with monitoring and repair enabled.

        The agent will execute its plan step-by-step, observing outcomes and updating
        its DiagnoseAndRepair module. A success (reward == 1) is recorded by incrementing
        the score.

        Returns:
            bool: True if the agent reached the goal; False otherwise.
        """
        observation, _ = self.env.reset()

        while True:
            for i in range(self.agent.get_plan_length()):
                action = self.agent.act()
                with suppress_stdout():
                    new_observation, reward, terminated, truncated, _ = self.env.planning_step(action)

                if reward != -1:
                    self.agent.receive_transition(observation, action, new_observation)

                if reward == 1:
                    self.score += 1
                    return True

                observation = new_observation

            return False  # Plan completed, but goal not reached

    def simulate_run_without_repair(self):
        """
        Simulates an agent's run without calling DiagnoseAndRepair.

        This method is useful for baseline evaluations where repair is not allowed.

        Returns:
            bool: True if the agent successfully reaches the goal; False otherwise.
        """
        observation, _ = self.env.reset()

        while True:
            for i in range(self.agent.get_plan_length()):
                action = self.agent.act()

                with suppress_stdout():
                    new_observation, reward, terminated, truncated, _ = self.env.planning_step(action)

                if reward == 1:
                    self.score += 1
                    return True

            return False  # Plan exhausted, goal not reached
