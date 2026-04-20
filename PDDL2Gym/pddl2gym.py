import random

import gymnasium as gym
import numpy as np
from gymnasium import spaces

from pathlib import Path

from pddl_plus_parser.lisp_parsers import DomainParser, ProblemParser

from pddl_plus_parser.models import State, Operator, ActionCall


import sys
import PDDL2Gym.config as CONFIG

sys.path.append(CONFIG.NSAM_PATH)
from sam_learning.core import EnvironmentSnapshot


from sam_learning.core.online_learning_agents.ipc_agent import IPCAgent


import logging

logging.root.setLevel(logging.ERROR)


class PDDL2GYM(gym.Env):
    """Custom Environment that follows gym interface."""

    def __init__(self, domain: str, problem: str, max_steps: int = 1500):
        super().__init__()

        # hold the domain and problem
        problem = Path(problem).absolute()
        domain = Path(domain).absolute()
        self.odomain = DomainParser(domain).parse_domain()
        self.uproblem = ProblemParser(problem_path=problem, domain=self.odomain)
        self.uproblem.parse_problem()

        # return available actions and check goal
        self.agent = IPCAgent(self.odomain, self.uproblem.problem)

        # hold the domain predicates
        self.env = EnvironmentSnapshot(self.odomain)

        # action space
        self.grounded_action_calls = []
        grounded_action_calls = list(self.agent.get_environment_actions(None))
        grounded_action_calls.sort(key=lambda x: x.name)
        for action_descriptor in grounded_action_calls:
            self.grounded_action_calls.append(
                Operator(
                    action=self.odomain.actions[action_descriptor.name],
                    domain=self.odomain,
                    grounded_action_call=action_descriptor.parameters,
                    problem_objects=self.uproblem.problem.objects,
                )
            )
        self.action_space = spaces.Discrete(len(self.grounded_action_calls))

        self.vec_size()

        self.current_step = 0
        self.max_steps = max_steps
        self.truncated = False
        self.last_state = None

    def vec_size(self):
        """Reset the environment vectors."""

        # hold the PDDL state
        self._state = State(
            self.uproblem.problem.initial_state_predicates,
            self.uproblem.problem.initial_state_fluents,
        )

        # hold the state fluents and predicates
        self.fluent_names = list(self._state.state_fluents.keys())
        self.predicates = [
            f"{predicate.name} {predicate.grounded_objects}"
            for predicate in self.env._create_state_discrete_snapshot(
                self._state, self.uproblem.problem.objects
            )
        ]

        # we need to sort the predicates to have a consistent order
        self.predicates.sort()

        # hold the state as gym vector
        state_vec = self.pddl2vec()
        self.observation_space = spaces.Box(
            low=0, high=255, shape=(len(state_vec),), dtype=np.int16
        )
        self.state = spaces.flatten(self.observation_space, state_vec)

    def pddl2vec(self):
        """Convert the PDDL state to a vector representation."""
        state = self._state

        # first we create a vector of the fluents
        fluent_vec = []
        for fluent in self.fluent_names:
            fluent_vec.append(state.state_fluents[fluent].value)

        # then we create a vector of the predicates
        predicate_vec = [0] * len(self.predicates)
        for grounded_predicates in state.state_predicates.values():
            for predicate in grounded_predicates:
                position = self.predicates.index(
                    f"{predicate.name} {predicate.grounded_objects}"
                )
                value = 1 if predicate.is_positive else 0

                predicate_vec[position] = value

        return fluent_vec + predicate_vec

    def pddl2dict(self):
        """Convert the PDDL state to a dictionary with 'fluents' and 'predicates' sub-dictionaries."""
        state = self._state

        fluents_dict = {}
        predicates_dict = {}

        # Add fluents
        for fluent in self.fluent_names:
            clean_fluent = tuple(fluent.strip("()").split())
            fluents_dict[clean_fluent] = state.state_fluents[fluent].value

        # Add active predicates
        for grounded_predicates in state.state_predicates.values():
            for predicate in grounded_predicates:
                key = f"{predicate.name} {predicate.grounded_objects}"
                value = 1 if predicate.is_positive else 0
                predicates_dict[key] = value

        # Ensure all known predicates are present
        for pred_template in self.predicates:
            if pred_template not in predicates_dict:
                predicates_dict[pred_template] = 0

        return {
            "fluents": fluents_dict,
            "predicates": predicates_dict
        }

    def step(self, action):
        """Execute one time step within the environment using the action space."""
        operator = self.get_action(action)
        return self.apply_operator(operator)

    def apply_operator(self, operator):
        # check if the action is valid
        thisActionNotApplicable = False
        try:
            self._state.is_init = False
            self.last_state = self._state
            self._state = operator.apply(self._state)

            # transform the state to a gym vector
            state_vec = self.pddl2vec()
            self.state = spaces.flatten(self.observation_space, state_vec)
        except Exception as e:
            print(e)
            thisActionNotApplicable = True
            pass

        terminated = True if self.agent.goal_reached(self._state) else False
        not_applicable_action = (
            not self.have_applicable_action()
        )  # can be used to check if the action is applicable


        if terminated:
            reward = 1
        elif thisActionNotApplicable:
            reward = -1
        elif not_applicable_action:
            reward = -1
        else:
            reward = 0

        self.current_step += 1
        self.truncated = (self.current_step >= self.max_steps) or not_applicable_action
        info = {}
        dictionary = self.pddl2dict()
        return dictionary, reward, terminated, self.truncated, info

    def get_type(self, grounded_parameter, action_objects):
        try:
            return action_objects.get(grounded_parameter).type.name
        except:
            print()

    def planning_step(self, action):
        """Execute one time step within the environment using PDDL action."""
        action_descriptor = parse_action_call(action)

        #nir added
        #seacrh the action
        #check if i need extra objects
        #add the missings
        possibleParams = []
        #curent solution can be better:

        for grounded_action_call in self.grounded_action_calls:
            if grounded_action_call.name == action_descriptor.name:
                for i in range(len(action_descriptor.parameters)):
                    type_my = self.get_type(action_descriptor.parameters[i], grounded_action_call.problem_objects)
                    type_env = self.get_type(grounded_action_call.grounded_call_objects[i], grounded_action_call.problem_objects)
                    if type_my != type_env:
                        action_descriptor.parameters.pop(i)
                        break
                break

        for grounded_action_call in self.grounded_action_calls:
            if grounded_action_call.name == action_descriptor.name:
                # if
                isSubset = grounded_action_call.grounded_call_objects[:len(action_descriptor.parameters)] == action_descriptor.parameters
                same_length = len(action_descriptor.parameters) == len(grounded_action_call.grounded_call_objects)
                if not same_length and isSubset:
                    #possibleParams.append(grounded_action_call.grounded_call_objects)
                    action_descriptor.parameters = grounded_action_call.grounded_call_objects

                    break

        #if len(possibleParams) != 0:
            #action_descriptor.parameters = random.choice(possibleParams)
            #action_descriptor.parameters = possibleParams[0]
        #end nir
        operator = Operator(
            action=self.odomain.actions[action_descriptor.name],
            domain=self.odomain,
            grounded_action_call=action_descriptor.parameters,
            problem_objects=self.uproblem.problem.objects,
        )
        return self.apply_operator(operator)

    def get_action(self, action):
        """Get the PDDL action from the action space."""
        return self.grounded_action_calls[action]

    def get_state(self):
        """Get the current PDDL state of the environment."""
        return self._state

    def reset(self, seed=None, options=None):
        """Reset the environment to an initial state and return an initial observation."""
        self._state = State(
            self.uproblem.problem.initial_state_predicates,
            self.uproblem.problem.initial_state_fluents,
            is_init=True,
        )
        state_vec = self.pddl2vec()
        self.state = spaces.flatten(self.observation_space, state_vec)
        info = {}
        self.current_step = 0
        dictionary = self.pddl2dict()
        return dictionary, info

    def render(self):
        print(self.state)

    def action_masks(self):
        """Return a mask of valid actions for the current state"""
        # Worning: this may be slow for large problems

        applicable_actions = []

        for operator in self.grounded_action_calls:
            applicable_actions.append(operator.is_applicable(self._state))

        return applicable_actions

    def have_applicable_action(self) -> bool:
        """Check if there is an applicable action in the current state"""
        # Worning: this may be slow for large problems

        for operator in self.grounded_action_calls:
            if operator.is_applicable(self._state):
                return True

        return False


def parse_action_call(action_call: str) -> ActionCall:
    """Parses the string representing the action call in the plan sequence.

    :param action_call: the string representing the action call.
    :return: the object representing the action name and its parameters.
    """
    action_data = action_call.lower().replace("(", " ( ").replace(")", " ) ").split()
    action_data = action_data[1:-1]
    return ActionCall(name=action_data[0], grounded_parameters=action_data[1:])
