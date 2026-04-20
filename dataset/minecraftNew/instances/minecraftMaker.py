#!/usr/bin/python3
import argparse
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template

TEMPLATE_FILE_PATH = Path("minecraft_template.pddl")


def generate_instance(instance_name: str, min_axe_value, max_axe_value, num_of_axe : int, num_of_pickaxe) -> str:
    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param num_counters: the number of counters in the problem.
    :param max_int: the maximal integer value.
    :return: the string representing the planning problem.
    """
    template = get_problem_template(TEMPLATE_FILE_PATH)
    template_mapping = {
        "instance_name": instance_name,
        "domain_name": "PolyCraft",
        "axe_list": " ".join([f"a{i}" for i in range(num_of_axe)]),
        "pickaxe_list": " ".join([f"p{i}" for i in range(num_of_pickaxe)]),

        "axe_value": "\n\t\t".join(
            [
                f"(= (value_axe a{i}) {random.uniform(min_axe_value, max_axe_value)})"
                for i in range(num_of_axe)
            ]
        ),
        "pickaxe_value": "\n\t\t".join(
            [
                f"(= (value_pickaxe p{i}) {random.uniform(min_axe_value, max_axe_value)})"
                for i in range(num_of_pickaxe)
            ]
        ),
        "trees_in_map": f"(= (trees_in_map) {random.randint(20, 40)})",
        "count_log_in_inventory": f"(= (count_log_in_inventory) {0})",
        "count_planks_in_inventory": f"(= (count_planks_in_inventory) {0})",
        "count_stick_in_inventory": f"(= (count_stick_in_inventory) {0})",
        "count_sack_polyisoprene_pellets_in_inventory": f"(= (count_sack_polyisoprene_pellets_in_inventory) {0})",
        "count_tree_tap_in_inventory": f"(= (count_tree_tap_in_inventory) {0})",
        "count_pogo_stick": f"(= (count_pogo_stick) {0})",
        "count_pogo_stick_goal": f"(= (count_pogo_stick) {1})",

    }

    return template.substitute(template_mapping)


def parse_arguments() -> argparse.Namespace:
    """Parse the command line arguments."""
    parser = argparse.ArgumentParser(description="Generate counters planning instance")
    parser.add_argument(
        "--min_counters",
        required=True,
        help="Minimal number of counters in the problems",
    )
    parser.add_argument(
        "--max_counters",
        required=True,
        help="Maximal number of counters in the problems",
    )
    parser.add_argument("--max_int", required=True, help="Maximal integer value")
    parser.add_argument(
        "--output_path",
        required=True,
        help="The path to the output folder where the problems will be saved",
    )
    args = parser.parse_args()
    return args


def generate_multiple_problems(
    min_axe_value,
    max_axe_value,
    max_number_of_axe,
    output_folder,
    total_num_problems=100
) -> NoReturn:
    """Generate multiple problems based on the input arguments.

    :param min_counters: the minimal number of counters possible in the problems.
    :param max_counters: the maximal number of counters possible in the problems.
    :param max_int: the maximal integer value.
    :param output_folder: the path to the output folder where the problems will be saved.
    """
    for i in range(total_num_problems):
        num_of_axe = random.randint(2, max_number_of_axe)
        num_of_pickaxe = random.randint(2, max_number_of_axe)

        print(f"Generating problem with {num_of_axe} axes")
        with open(output_folder / f"pfile{i + 1}.pddl", "wt") as problem_file:
            problem_file.write(
                generate_instance(
                    f"instance_{i + 1}", min_axe_value, max_axe_value, num_of_axe, num_of_pickaxe
                )
            )


def main():
    generate_multiple_problems(
        min_axe_value=int(0.1),
        max_axe_value=int(1.5),
        max_number_of_axe=int(5),
        output_folder=Path("C:\Felix\dataset\minecraftNew\instances"),
    )


if __name__ == "__main__":
    main()
