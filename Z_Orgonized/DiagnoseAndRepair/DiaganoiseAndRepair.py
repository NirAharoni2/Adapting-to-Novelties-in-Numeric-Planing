from Z_Orgonized.DiagnoseAndRepair.Monitor import Monitor
from Z_Orgonized.DiagnoseAndRepair.Repair import Repair


class DiagnoseAndRepair:
    def __init__(self, domain_name):
        self.step = None
        self.monitor = Monitor()
        self.repair = Repair(domain_name)
        self.inequality = False


    def createTrace(self, domain_name, instance_number):
        self.monitor.createTrace(domain_name, instance_number)

    def receive_transition(self, LastObservation, action, newObservation):
        inequality, different_keys = self.monitor.check_inequality(newObservation)
        if inequality:
            self.repair.repair_action(LastObservation, action, newObservation, different_keys)
            self.inequality = True