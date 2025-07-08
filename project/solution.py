from Env import Env
from Planner import NYX
from project.problemGenerator import ProblemGenerator
import matplotlib.pyplot as plt

import re
import ast

import numpy as np

import numpy as np

def getActionName(faultyAction):
    parts = faultyAction.strip("()").split()
    name = parts[0]  # This will be "s0", "s1", etc.
    return name

def linear_regression(points):
    points = np.array(points)
    x = points[:, 0]
    y = points[:, 1]

    # Fit line y = ax + b
    a, b = np.polyfit(x, y, 1)
    return a, b

def extract_observations(faultyAction, observation, new_observation):
    #takes the relevtn part from the observation to update the faultyAction
    # (the relevant part is the current supply of the relevant sled)

    # Split the string and extract the second element (e.g., "s0")
    parts = faultyAction.strip("()").split()
    si = parts[1]  # This will be "s0", "s1", etc.

    # Extract the index i
    i = int(si[1:])  # Remove the 's' and convert to int

    # Get values from observation and new_observation
    obs_value = observation[2 * i + 1]
    new_obs_value = new_observation[2 * i + 1]

    return obs_value, new_obs_value

def extract_supplies_and_positions(state_array, num_waypoints, num_sleds):
    state_array = np.array(state_array)

    # Extract waypoint supplies
    waypoint_supplies = state_array[4:4 + num_waypoints]

    # Extract sled positions from one-hot encoding
    positions_start = 4 + num_waypoints
    sled_positions = []

    for i in range(num_sleds):
        one_hot = state_array[positions_start + i * num_waypoints : positions_start + (i + 1) * num_waypoints]
        pos = int(np.argmax(one_hot))  # Position = index of 1
        sled_positions.append(pos)

    return state_array[1], state_array[3], list(waypoint_supplies), sled_positions


def update_problem_file(pathFile, s0_supplies, s1_supplies, waypoint_supplies, sled_positions):
    [s0_position, s1_position] = sled_positions
    with open(pathFile, 'r') as file:
        lines = file.readlines()

    with open(pathFile, 'w') as file:
        for line in lines:
            if '(= (sled_supplies s0)' in line:
                line = f'\t\t(= (sled_supplies s0) {s0_supplies})\n'
            elif '(= (sled_supplies s1)' in line:
                line = f'\t\t(= (sled_supplies s1) {s1_supplies})\n'
            elif '(at s0 wa' in line:
                line = f'\t\t(at s0 wa{s0_position})\n'
            elif '(at s1 wa' in line:
                line = f'\t\t(at s1 wa{s1_position})\n'
            elif '(= (waypoint_supplies wa' in line:
                match = re.search(r'\(= \(waypoint_supplies wa(\d+)\)', line)
                if match:
                    wp_index = int(match.group(1))
                    if wp_index < len(waypoint_supplies):
                        line = f'\t\t(= (waypoint_supplies wa{wp_index}) {waypoint_supplies[wp_index]})\n'
            file.write(line)


def parseSimulation(simulationPath):
    # Load file content
    with open(simulationPath, 'r') as f:
        content = f.read()

    # Find all state blocks
    state_blocks = re.findall(r"State:\s*(\{.*?\})(?=\s*---|\Z)", content, re.DOTALL)

    # Initialize lists
    sled_supplies_s0 = []
    sled_supplies_s1 = []

    # Extract values from each state
    for state_str in state_blocks:
        state_dict = ast.literal_eval(state_str.strip())
        sled_supplies_s0.append(state_dict.get("['sled_supplies', 's0']", None))
        sled_supplies_s1.append(state_dict.get("['sled_supplies', 's1']", None))

    # Create the final dictionary
    result = {
        "sled_supplies_s0": sled_supplies_s0,
        "sled_supplies_s1": sled_supplies_s1
    }
    combined = list(zip(result['sled_supplies_s0'], result['sled_supplies_s1']))

    return combined

def extract_actions(filepath):
    actions = []
    with open(filepath, 'r') as file:
        for line in file:
            if ':' in line and '[' in line:
                # Split once on ':' to get the part after the timestamp
                _, rest = line.split(':', 1)
                # Split before the '[' to remove the final part
                action = rest.split('[')[0].strip()
                actions.append(action)
    return actions


def getNextAction(plan, i):
    action = plan[i]
    return action


def checkInequality(step_simulation, new_observation):
    s0_supply = new_observation[1]
    s1_supply = new_observation[3]

    if s0_supply != step_simulation[0] or s1_supply != step_simulation[1]:
        return True
    return False

class Solution:
    def __init__(self, domain_model_path, Repair_true):
        self.Repair_true = Repair_true
        self.score = 0
        self.domain_model_path = domain_model_path
        self.planner = NYX()
        self.env = Env()
        self.pg = ProblemGenerator()
        self.Data = {}
        self.N1 = 0
        self.N2 = 15
        self.problemPath = ""
        self.planPath = ""
        self.simulationPath = ""
        self.simulationList = None
        self.planList = None
        self.score_history = [0]


    def start(self):
        for i in range(self.N1):
            self.set_up_new_problem()
            self.createPlan()
            self.validatePlan()
        self.env.injectNovelty()
        self.score = 0
        for i in range(self.N1, self.N2):
            self.set_up_new_problem()
            succeeded = self.createPlan()
            if succeeded:
                inconsistent = self.validatePlan()
                if inconsistent and self.Repair_true:
                    self.repair()
                    pass
            self.score_history.append(self.score)  # Record the score at this step
        return self.score_history


    def set_up_new_problem(self):
        problemName =  self.pg.create_new_problem()
        self.setUpPaths(problemName)


    def validatePlan(self):

        self.env.initilaize_new_problem_env(self.problemPath)
        observation, _ = self.env.reset()
        #first 1 is init
        i = 0
        while True:
            restart = False
            for i, step_simulation in enumerate(self.simulationList[1:]):
                action = getNextAction(self.planList, i)


                new_observation, reward, terminated, truncated, _ = self.env.planning_step(action)

                if checkInequality(step_simulation, new_observation):
                    self.addData(action, observation, new_observation)
                    return True
                    
                if reward == 1:
                    self.score += 1

                    break

                observation = new_observation

            if not restart:
                break  # Exit the while-loop when no replanning was triggered
            return False

    def addData(self, faultyAction, observation, new_observation):
        name = getActionName(faultyAction)
        relevant_observation, relevant_new_observation = extract_observations(faultyAction, observation, new_observation)
        self.Data.setdefault(name, []).append([relevant_observation, relevant_new_observation])

    def repair(self):
        for name in self.Data.keys():
            a, b = linear_regression(self.Data[name])
            print(self.Data)
            print(str(a) + " " + str(b))
            self.update_our_domain_model(name, a, b)



    def setSimulationList(self, domainPath, problemPath, planPath):
        self.planner.create_simulation(domainPath, problemPath, planPath)
        self.simulationList = parseSimulation(self.simulationPath)

    def createPlan(self):
        self.planList = self.planner.create_plan(self.domain_model_path, self.problemPath)
        print(len(self.planList))
        if len(self.planList) == 0:
            return False
        self.setSimulationList(self.domain_model_path , self.problemPath, self.planPath)
        return True


    def setUpPaths(self, problemName):
        self.simulationPath = "C:\studies\github\PDDL2Gym\project\expedition_problems\\trace_" + problemName
        self.problemPath = "C:\studies\github\PDDL2Gym\project\expedition_problems\\" + problemName
        self.planPath = "C:\studies\github\PDDL2Gym\project\expedition_problems\\plans\\plan1_" + problemName

    def replan(self, new_observation):
        #update problem
        correct_s0_supply, correct_s1_supply, waypoint_supplies, sled_positions = extract_supplies_and_positions(new_observation, self.pg.numberOfWayPoints, self.pg.numberOfWaySled)

        update_problem_file(self.problemPath, correct_s0_supply, correct_s1_supply, waypoint_supplies, sled_positions)
        self.planList = []
        self.planList = self.planner.create_plan(self.domain_model_path, self.problemPath)
        print(self.planList)
        self.setSimulationList(self.domain_model_path , self.problemPath, self.planPath)

    import re

    import re

    def update_our_domain_model(self, name, a, b):
        with open(self.domain_model_path, 'r') as file:
            lines = file.readlines()

        new_lines = []
        inside_target_action = False
        action_start = f"(:action {name}"
        assign_pattern = re.compile(
            r'\(assign\s+\(sled_supplies\s+\?s\)\s+\(\+\s+\(\*\s+[-+]?\d+(?:\.\d+)?\s+\(sled_supplies\s+\?s\)\)\s+[-+]?\d+(?:\.\d+)?\)\)'
        )

        for line in lines:
            stripped = line.strip()

            # Start of the target action
            if stripped.startswith("(:action"):
                inside_target_action = stripped.startswith(action_start)

            # If we're in the correct action and the line has the assign expression
            if inside_target_action and assign_pattern.search(stripped):
                new_assign = f"(assign (sled_supplies ?s) (+ (* {a:.5f} (sled_supplies ?s)) {b:.5f}))"
                new_line = assign_pattern.sub(new_assign, line)
                new_lines.append(new_line)
                inside_target_action = False  # only replace inside this one action
            else:
                new_lines.append(line)

        with open(self.domain_model_path, 'w') as file:
            file.writelines(new_lines)



    def plot_score(self):
        plt.plot(range(len(self.score_history)), self.score_history, marker='o')
        plt.xlabel('Problem index')
        plt.ylabel('Successful plans so far')
        plt.title('Without repair')
        plt.grid(True)
        plt.show()