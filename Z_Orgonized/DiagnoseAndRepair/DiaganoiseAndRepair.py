from Z_Orgonized.DiagnoseAndRepair.Monitor import Monitor
from Z_Orgonized.DiagnoseAndRepair.Repair import Repair


class DiagnoseAndRepair:
    def __init__(self, repair_id):
        self.step = None
        self.monitor = Monitor()
        self.repair = Repair()
        self.planFailed = False
        self.repair_id = repair_id



    def receive_transition(self, LastObservation, action, newObservation):
        self.monitor.initialize(action)
        data = self.monitor.check_inequality(LastObservation, newObservation)
        if data["inequality"]:
            print(action)
            if self.repair_id == 1:
                self.repair.repair_action1(LastObservation, action, newObservation, data["different_keys"])
            if self.repair_id == 3:
                self.repair.repair_action3(LastObservation, action, newObservation, data["different_keys"])
            if self.repair_id == 4:
                self.repair.repair_action4(LastObservation, action, newObservation, data["different_keys"])
        if data["planFailed"]:
            self.planFailed = True

    def initiliazeSimulator(self):
        #self.monitor.initialize()
        if not self.repair.parsed_model:
            self.repair.initialize()

