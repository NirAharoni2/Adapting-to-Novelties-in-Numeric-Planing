import ast
import os

import numpy as np

from Z_Orgonized.Utilities.config import Config
from nyx.simulator import Simulator


def process_state(state):
    combined = {}

    def normalize_key(key):
        # Remove leading/trailing parentheses or brackets
        key = key.strip().strip('()').strip()
        parts = key.split(' ', 1)
        if len(parts) == 1:
            return str([parts[0]])
        else:
            head, tail = parts
            try:
                # Try to parse the second part if it's a list-like string
                tail_parsed = ast.literal_eval(tail)
                if isinstance(tail_parsed, list):
                    return str([head] + tail_parsed)
            except:
                pass
            return str([head, tail])

    # Process fluents
    for k, v in state['fluents'].items():
        combined[str(list(k))] = v

    # Process predicates with bool conversion
    for k, v in state['predicates'].items():
        combined[normalize_key(k)] = bool(v)

    return combined


class Monitor:
    def __init__(self):
        self.simulator = None


    def initialize(self, action):
        self.simulator = Simulator(Config.domain_path, Config.problem_path, action, [])

    def check_inequality(self, lastObservation,observation):
        trace = self.simulator.simulate(process_state(lastObservation))

        #action not applicable so abort and go to next problem
        if trace is None:
            return {"inequality": False, "planFailed":True, "different_keys": None}
        def normalize_key(key):
            # Converts keys like "(sled_supplies s0)" -> "['sled_supplies', 's0']"
            key = key.strip("()")
            parts = key.split()
            return str(parts)

        dict1 = observation
        dict2 = trace
        different_keys = []
        # Compare fluents
        for key, val in dict1.get('fluents', {}).items():
            norm_key = str(list(key))

            if norm_key in dict2 and not np.isclose(dict2[norm_key], val):
                different_keys.append(key)

        # Compare predicates (1 = True, 0 = False)
        for key, val in dict1.get('predicates', {}).items():
            norm_key = str(key.split())
            expected_val = True if val == 1 else False
            if norm_key in dict2 and dict2[norm_key] != expected_val:
                different_keys.append(key)
       # if different_keys:
        #    print(lastObservation)
         #   print(trace)
          #  print(observation)

        return {"inequality": len(different_keys) > 0, "planFailed": False, "different_keys": different_keys}


