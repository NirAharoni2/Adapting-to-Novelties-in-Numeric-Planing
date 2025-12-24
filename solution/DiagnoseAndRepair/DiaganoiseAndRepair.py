from solution.DiagnoseAndRepair.Monitor import Monitor
from solution.DiagnoseAndRepair.Repair import Repair


class DiagnoseAndRepair:
    """
    DiagnoseAndRepair is responsible for monitoring the agent's execution to detect deviations
    from expected outcomes and applying a repair strategy when necessary.

    Attributes:
        step (int or None): Reserved for future use (not currently used).
        monitor (Monitor): The monitoring component to detect state inconsistencies.
        repair (Repair): The repair component to modify the domain or model in case of errors.
        planFailed (bool): Flag indicating if a failure in the current plan was detected.
        repair_id (int): Identifier for selecting the appropriate repair strategy.
    """

    def __init__(self, repair_id):
        """
        Initializes the DiagnoseAndRepair object with monitoring and repair modules.

        Args:
            repair_id (int): Determines which repair strategy to apply upon failure.
        """
        self.step = None
        self.monitor = Monitor()
        self.repair = Repair()
        self.planFailed = False
        self.repair_id = repair_id

    def receive_transition(self, LastObservation, action, newObservation):
        """
        Analyzes a state transition to detect discrepancies and applies repair strategies if needed.

        Args:
            LastObservation (dict): The state before the action was executed.
            action (str): The action taken, formatted as a string (e.g., "(move a b)").
            newObservation (dict): The state after the action was executed.
        """
        # Normalize the action string into a list format
        action = action.strip("()").split()

        # Initialize the monitor with the current action
        self.monitor.initialize(action)

        # Check for any differences between expected and actual states
        data = self.monitor.check_inequality(LastObservation, newObservation)

        if data["inequality"]:
            self.repair.mainRepair(self.repair_id, LastObservation, action, newObservation, data["different_keys"])
        # Update plan failure flag if a discrepancy was fatal to the plan
        if data["planFailed"]:
            self.planFailed = True


    def initiliazeSimulator(self):
        """
        Initializes the repair module's simulator (e.g., parses the model) if not already initialized.
        """
        if not self.repair.parsed_model:
            self.repair.initialize()
