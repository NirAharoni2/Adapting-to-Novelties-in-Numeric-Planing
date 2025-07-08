from PDDL2GYM.pddl2gym import PDDL2GYM


class Env:
    def __init__(self, ):
        self.domain_path = "C:\studies\github\PDDL2Gym\project\expedition_environment\domain.pddl"
        self.env = None


    def injectNovelty(self):
        self.domain_path = "C:\studies\github\PDDL2Gym\project\expedition_environment\\noveltyDomain"

    def initilaize_new_problem_env(self, problem):
        self.env =    PDDL2GYM(
        self.domain_path,
        problem,
        max_steps=1000,)

    def planning_step(self, action):
        return self.env.planning_step(action)

    def reset(self):
        return self.env.reset()