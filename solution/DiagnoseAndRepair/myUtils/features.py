from collections import Counter
from itertools import combinations_with_replacement


def filter_valid_predicates(action, predicate_dict: dict[tuple, int]) -> dict[tuple, int]:
    """
    Filters predicates so that only those whose arguments are part of the action are kept.

    Args:
        action (Action)
        predicate_dict (dict): Dictionary of predicates.

    Returns:
        dict: Filtered dictionary of predicates that are relevant to the given action.
    """
    filtered = {}

    for key, value in predicate_dict.items():
        if len(key) == 1:
            filtered[key] = value
            continue
        pred_args_list = key[1:]
        if all(arg in action.groundedParameters for arg in pred_args_list):
            filtered[key] = value

    return filtered


def nest_multiplication(terms):
    """
    Recursively nests multiplication: a * b * c -> ('*', a, ('*', b, c)).

    Args:
        terms (iterable): Terms to multiply.

    Returns:
        nested expression (tuple or element): Nested multiplication structure.
    """
    terms = list(terms)
    if len(terms) == 1:
        return terms[0]
    elif len(terms) == 2:
        return ('*', terms[0], terms[1])
    else:
        return ('*', terms[0], nest_multiplication(terms[1:]))


def generate_nested_combinations(term_dict, degree):
    """
    Generates nested monomial combinations of terms up to a specified degree.

    Args:
        term_dict (dict): Input terms and their values.
        degree (int): Maximum degree of monomials to generate.

    Returns:
        dict: Keys as nested monomials, values as evaluated products.
    """
    result = {}
    keys = list(term_dict.keys())

    for d in range(1, degree + 1):
        for combo in combinations_with_replacement(keys, d):
            counter = Counter(combo)
            value = 1.0
            for key, count in counter.items():
                value *= term_dict[key] ** count
            nested_key = nest_multiplication(combo)
            result[nested_key] = value

    return result