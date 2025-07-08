
import ast
import re

import ast
import re

def parse_trace(filepath):
    parsed_states = []

    with open(filepath, 'r') as f:
        for line in f:
            if line.startswith("State:"):
                match = re.search(r'State:\s*(\{.*\})', line)
                if not match:
                    continue
                state_dict_raw = match.group(1)
                state_dict = ast.literal_eval(state_dict_raw)


                parsed_states.append(state_dict)

    return parsed_states


