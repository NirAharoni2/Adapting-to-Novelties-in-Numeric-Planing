import re


def update_arithmetic_assignment_effect(pddl_str, action_name, target_func, expression):
    """
    Updates or adds an arithmetic assignment effect of the form:
    (= (target_func) expression)

    Arguments:
    - pddl_str: the PDDL domain string
    - action_name: name of the action to update
    - target_func: function name and args as string, e.g. "sled_supplies ?s"
    - expression: full arithmetic expression as string, e.g. "(* (+ (sled_supplies ?s) 2) 2)"
    """
    pattern = re.compile(
        rf'(\(:action\s+{action_name}.*?:effect\s+\(and)(.*?)(\)\))',
        re.DOTALL
    )

    match = pattern.search(pddl_str)
    if not match:
        raise ValueError(f"Action '{action_name}' not found.")

    before = match.group(1)
    effect_body = match.group(2)
    after = match.group(3)

    # Build full assignment expression
    func_call = f"({target_func})"
    new_effect = f"(= {func_call} {expression})"

    # Replace existing assignment to the same function if it exists
    assign_pattern = re.compile(
        rf'\(= \({re.escape(target_func)}\) [^)]+\)',
        re.DOTALL
    )
    if assign_pattern.search(effect_body):
        effect_body = assign_pattern.sub(new_effect, effect_body)
    else:
        effect_body = effect_body.strip() + "\n  " + new_effect

    # Reconstruct updated action block
    new_action_block = before + "\n  " + effect_body + after

    # Replace old action block with the updated one
    updated_pddl = pattern.sub(new_action_block, pddl_str)

    return updated_pddl
