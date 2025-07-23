from Z_Orgonized.DiagnoseAndRepair.DiaganoiseAndRepair import DiagnoseAndRepair
from Z_Orgonized.Utilities.config import Config
from Z_Orgonized.baseAgent.Plan import Plan
from Z_Orgonized.baseAgent.Planner import Planner


class Agent:
    def __init__(self,repair_id):
        self.plan = Plan()
        self.planner = Planner(self.plan)
        self.DiagnoseAndRepair = DiagnoseAndRepair(repair_id=repair_id)


    def act(self):
        return self.plan.return_next_action()

    def create_new_plan(self):
        self.DiagnoseAndRepair.planFailed = False
        created_plan = self.planner.create_plan()
        if not created_plan:
            return False
        self.DiagnoseAndRepair.initiliazeSimulator()
        return True

    def receive_transition(self, LastObservation, action, newObservation):
        self.DiagnoseAndRepair.receive_transition(LastObservation, action, newObservation)


    def get_plan_length(self):
        return len(self.plan.actionList)