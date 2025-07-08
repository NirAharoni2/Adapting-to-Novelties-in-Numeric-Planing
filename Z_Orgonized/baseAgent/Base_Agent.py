from Z_Orgonized.DiagnoseAndRepair.DiaganoiseAndRepair import DiagnoseAndRepair
from Z_Orgonized.baseAgent.Model import Model
from Z_Orgonized.baseAgent.Plan import Plan
from Z_Orgonized.baseAgent.Planner import Planner


class Agent:
    def __init__(self, domain_name):
        self.model = Model(domain_name)
        self.plan = Plan()
        self.planner = Planner(self.plan)
        self.DiagnoseAndRepair = DiagnoseAndRepair(domain_name)
        self.domain_name = domain_name


    def act(self):
        return self.plan.return_next_action()

    def create_new_plan(self, instance_number):
        self.DiagnoseAndRepair.inequality = False
        domain_path = self.model.get_model_path()
        problem_path = self.model.get_instance_path(instance_number)
        self.planner.create_plan(domain_path, problem_path)
        self.DiagnoseAndRepair.createTrace(self.domain_name, instance_number)

    def receive_transition(self, LastObservation, action, newObservation):
        self.DiagnoseAndRepair.receive_transition(LastObservation, action, newObservation)


    def get_plan_length(self):
        return len(self.plan.actionList)