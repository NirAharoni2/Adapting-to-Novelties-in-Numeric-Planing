from solution.DiagnoseAndRepair.DiaganoiseAndRepair import DiagnoseAndRepair
from solution.Utilities.config import Config
from solution.baseAgent.Plan import Plan
from solution.baseAgent.Planner import Planner


class Agent:
    """
    The Agent class encapsulates the core logic for an autonomous agent that
    plans actions, executes them, and repairs plans when failures are detected.

    Attributes:
        plan (Plan): An object that stores the current plan of actions.
        planner (Planner): A planning module that creates plans based on the current state.
        DiagnoseAndRepair (DiagnoseAndRepair): Module responsible for detecting plan failures
                                               and initiating repairs when necessary.
    """

    def __init__(self, repair_id):
        """
        Initializes the Agent with a planning module and a diagnose-and-repair module.

        Args:
            repair_id (int): Identifier used by the DiagnoseAndRepair module to manage repair sessions.
        """
        self.plan = Plan()
        self.planner = Planner(self.plan)
        self.DiagnoseAndRepair = DiagnoseAndRepair(repair_id=repair_id)

    def act(self):
        """
        Retrieves the next action from the current plan.

        Returns:
            Any: The next action to be executed, or None if no actions remain.
        """
        return self.plan.return_next_action()

    def create_new_plan(self):
        """
        Attempts to create a new plan using the planner.

        Resets the plan failure flag and initializes the repair simulator if planning succeeds.

        Returns:
            bool: True if a plan was successfully created, False otherwise.
        """
        self.DiagnoseAndRepair.planFailed = False
        created_plan = self.planner.create_plan()
        if not created_plan:
            return False
        self.DiagnoseAndRepair.initiliazeSimulator()
        return True

    def receive_transition(self, LastObservation, action, newObservation):
        """
        Passes the latest environment transition to the DiagnoseAndRepair module.

        Args:
            LastObservation (Any): The state before the action was taken.
            action (Any): The action that was executed.
            newObservation (Any): The resulting state after the action was taken.
        """
        self.DiagnoseAndRepair.receive_transition(LastObservation, action, newObservation)

    def get_plan_length(self):
        """
        Returns the number of remaining actions in the current plan.

        Returns:
            int: The number of actions left in the plan.
        """
        return len(self.plan.actionList)
