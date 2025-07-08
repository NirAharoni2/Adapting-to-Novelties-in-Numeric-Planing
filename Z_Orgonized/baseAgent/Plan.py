class Plan:
    def __init__(self):
        self.timeList = []
        self.actionList = []
        self.step = 0

    def setUpPlan(self, times, actions):
        self.timeList = times
        self.actionList = actions
        self.step = 0

    def return_next_action(self):
        action = self.actionList[self.step]
        self.step += 1
        return action