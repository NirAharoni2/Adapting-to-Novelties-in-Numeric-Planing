import os
import sys
from typing import Optional, List

from nyx.PDDL import PDDL_Parser
from nyx.syntax import constants
from nyx.syntax.plan import Plan
from typing import List, Optional

from nyx.syntax.state import State


class Simulator:
    def __init__(self, domain_file: str, problem_file: str, action: str,
                 args_list: Optional[List[str]] = None):
        self.domain_file = domain_file
        self.problem_file = problem_file
        self.plan_file = action

        if args_list:
            self.process_arguments(args_list)

        self.parser = PDDL_Parser(domain_file, problem_file)
        self.grounded_instance = self.parser.grounded_instance
        self.plan = Plan.from_single_action(
            action,
            self.grounded_instance,
            expand_time_passing=constants.EXPAND_TIME_PASSING
        )

    def process_arguments(self, cl_arguments):
        for arg in cl_arguments:
            if arg == '-h':
                print(constants.SIMULATOR_HELP)
                exit(1)
            elif arg == '-vv':
                constants.VERY_VERBOSE_OUTPUT = True
                continue
            elif arg == '-v':
                constants.VERBOSE_OUTPUT = True
                continue
            elif arg == '-e':
                constants.EXPAND_TIME_PASSING = True
                continue
            elif arg == '-f':
                constants.FULL_TRACE = True
                continue
            elif arg == '-dblevent':
                constants.DOUBLE_EVENT_CHECK = True
                continue

            arg_list = arg.split(':')
            if arg_list[0] == '-t':
                constants.set_delta_t(float(arg_list[1]))
            else:
                print('\nERROR: Unrecognized Argument\nCall with -h flag for help')
                exit(1)

    def simulate(self, observation):
        # Simulate a single action on the initial state using the grounded instance
        init_state = State(0,0,0,observation)
        next_obs_trace = self.plan.simulate(init_state)
        if next_obs_trace is None:
            return None
        return next_obs_trace.state_vars
