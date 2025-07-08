import re

def parse_effect_predicates(pddl_str):
    action_blocks = re.findall(
        r'\(:action\s+([\w_-]+).*?:effect\s+\(and(.*?)\)\)',
        pddl_str, re.DOTALL
    )
    action_effects = {}

    for action_name, effects in action_blocks:
        # Extract all names of predicates/functions
        names = re.findall(r'\(?([a-zA-Z_][\w-]*)', effects)
        # Remove common operators
        keywords = {'and', 'or', 'not', '>', '>=', '<', '<=', '=', '+', '-', '*', '/'}
        filtered = [n for n in names if n not in keywords]
        action_effects[action_name] = sorted(set(filtered))  # Unique & sorted

    return action_effects
