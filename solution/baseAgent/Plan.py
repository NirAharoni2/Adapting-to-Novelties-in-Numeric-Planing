class Plan:
    """
    A simple class to manage a sequence of actions and their corresponding timestamps for an agent.

    Attributes:
        timeList (list): A list of timestamps or time steps for each action.
        actionList (list): A list of actions to be executed in order.
        step (int): The index of the next action to be returned.
    """

    def __init__(self):
        """
        Initializes an empty plan with no actions and sets the step counter to zero.
        """
        self.timeList = []
        self.actionList = []
        self.step = 0

    def setUpPlan(self, times, actions):
        """
        Initializes or resets the plan with new action and time lists.

        Args:
            times (list): A list of time values (e.g., timestamps or time steps).
            actions (list): A list of actions corresponding to each time step.
        """
        self.timeList = times
        self.actionList = actions
        self.step = 0  # Reset step to start from the beginning

    def return_next_action(self):
        """
        Returns the next action in the plan and advances the step counter.

        Returns:
            Any: The next action to be executed.

        Raises:
            IndexError: If there are no more actions to return.
        """
        action = self.actionList[self.step]
        self.step += 1
        return action
