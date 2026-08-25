import ast
import os
import numpy as np

from solution.Utilities.config import Config
from nyx.simulator import Simulator


def process_state(state):
    """
    Normalizes and combines fluents and predicates from a state dictionary
    into a flat dictionary with stringified keys.

    Args:
        state (dict): A state containing 'fluents' and 'predicates'.

    Returns:
        dict: A combined and normalized representation of fluents and predicates.
    """
    combined = {}

    def normalize_key(key):
        """
        Converts complex key formats into normalized string lists.

        Examples:
            "(sled_supplies s0)" -> "['sled_supplies', 's0']"
        """
        key = key.strip().strip('()').strip()
        parts = key.split(' ', 1)
        if len(parts) == 1:
            return str([parts[0]])
        else:
            head, tail = parts
            try:
                tail_parsed = ast.literal_eval(tail)
                if isinstance(tail_parsed, list):
                    return str([head] + tail_parsed)
            except:
                pass
            return str([head, tail])

    # Normalize fluents
    for k, v in state['fluents'].items():
        combined[str(list(k))] = v

    # Normalize predicates (as booleans)
    for k, v in state['predicates'].items():
        combined[normalize_key(k)] = bool(v)

    return combined


class Monitor:
    """
    The Monitor class is responsible for checking discrepancies between
    expected state transitions (via simulation) and observed transitions.

    Attributes:
        simulator (Simulator): The NYX simulator for domain-specific state transitions.
    """

    def __init__(self):
        """
        Initializes the monitor with no active simulator.
        """
        self.simulator = None

    def initialize(self, action):
        """
        Initializes the simulator for a specific action.

        Args:
            action (list): The action to simulate (e.g., ['move', 'a', 'b']).
        """
        self.simulator = Simulator(Config.domain_path, Config.problem_path, action, [])

    def check_inequality(self, lastObservation, observation):
        """
        Simulates the expected state transition and compares it to the actual observation.

        Args:
            lastObservation (dict): The state before the action.
            observation (dict): The state after the action.

        Returns:
            dict: {
                'inequality': True if any fluents/predicates mismatch,
                'planFailed': True if the action is not applicable,
                'different_keys': List of keys where values differ
            }
        """
        trace = self.simulator.simulate(process_state(lastObservation))

        if trace is None:
            # Action was not applicable in the simulator
            return {"inequality": False, "planFailed": True, "different_keys": None}

        dict1 = observation
        dict2 = trace
        different_keys = []

        # Compare fluents
        for key, val in dict1.get('fluents', {}).items():
            norm_key = str(list(key))
            if norm_key in dict2 and not np.isclose(dict2[norm_key], val):
                different_keys.append(key)

        # Compare predicates
        for key, val in dict1.get('predicates', {}).items():
            norm_key = str(key.split())
            expected_val = True if val == 1 else False
            if norm_key in dict2 and dict2[norm_key] != expected_val:
                different_keys.append(key)

        return {
            "inequality": len(different_keys) > 0,
            "planFailed": False,
            "different_keys": different_keys
        }
