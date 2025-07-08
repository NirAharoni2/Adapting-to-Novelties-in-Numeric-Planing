from pathlib import Path

from PDDL2Gym.pddl2gym import PDDL2GYM
from Z_Orgonized.Environment.Environment_Model import Environment_Model
from Z_Orgonized.baseAgent.Planner import suppress_stdout


class Environment:
    def __init__(self, domain_name, agent):
        self.score = 0
        self.environmentModel = Environment_Model(domain_name)
        self.env = None
        self.agent = agent

    def injectNovelty(self):
        self.environmentModel.injectNovelty()

    def returnToNoNovelty(self):
        self.environmentModel.returnToNoNovelty()

    def initialize_new_problem_env(self,i):
        self.env =    PDDL2GYM(
        self.environmentModel.get_model_path(),
        self.environmentModel.get_problem_path(i),
        max_steps=1000,)


    def simulate_run(self):
        #add replan currently no replan
        observation, _ = self.env.reset()
        # first 1 is init
        while True:
            for i in range(self.agent.get_plan_length()):
                #get action and receive observations
                action = self.agent.act()
                with suppress_stdout():
                    new_observation, reward, terminated, truncated, _ = self.env.planning_step(action)
                self.agent.receive_transition(observation, action, new_observation)
                if reward == 1:
                    self.score += 1
                    return True
                observation = new_observation
                if self.agent.DiagnoseAndRepair.inequality:
                    return False

            return False


    def simulate_run_without_repair(self):
        #add replan currently no replan
        observation, _ = self.env.reset()
        # first 1 is init
        while True:
            for i in range(self.agent.get_plan_length()):
                #get action and receive observations
                action = self.agent.act()
                with suppress_stdout():
                    new_observation, reward, terminated, truncated, _ = self.env.planning_step(action)
                if reward == 1:
                    self.score += 1
                    return True

            return False
