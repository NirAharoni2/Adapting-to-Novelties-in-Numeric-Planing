#!/usr/bin/python3
import argparse
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template
from solution.Utilities.config import Config

TEMPLATE_FILE_PATH = Path("minecraft_template.pddl")


def generate_instance(instance_name: str, trees_in_map: int, mine_factor=None) -> str:
    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param trees_in_map: the number of trees available on the map.
    :param mine_factor: the mine_factor value for the problem; None means the
        problem does not include a mine_factor at all (matches create_polycraft_problem),
        otherwise the problem includes it (matches create_polycraft_problem2).
    :return: the string representing the planning problem.
    """
    template = get_problem_template(TEMPLATE_FILE_PATH)
    template_mapping = {
        "instance_name": instance_name,
        "domain_name": "PolyCraft",
        "trees_in_map": f"(= (trees_in_map) {trees_in_map})",
        "mine_factor": f"(= (mine_factor) {mine_factor})" if mine_factor is not None else "",
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
    parser = argparse.ArgumentParser(description="Generate minecraft planning instances")
    parser.add_argument(
        "--min_trees",
        required=True,
        help="Minimal number of trees in the problems",
    )
    parser.add_argument(
        "--max_trees",
        required=True,
        help="Maximal number of trees in the problems",
    )
    parser.add_argument(
        "--output_path",
        required=True,
        help="The path to the output folder where the problems will be saved",
    )
    args = parser.parse_args()
    return args


def generate_multiple_problems(output_folder: Path, total_num_problems: int,
                               min_trees_in_map: int, max_trees_in_map: int,
                               min_mine_factor, max_mine_factor,
                               mine_factor_start_problem_id: int = None) -> NoReturn:
    """Generate multiple problems based on the input arguments.

    :param output_folder: the path to the output folder where the problems will be saved.
    :param total_num_problems: the number of problem instances to generate.
    :param min_trees_in_map: the minimal number of trees possible in the problems.
    :param max_trees_in_map: the maximal number of trees possible in the problems.
    :param min_mine_factor: the minimal mine_factor value for problems that get one.
    :param max_mine_factor: the maximal mine_factor value for problems that get one.
    :param mine_factor_start_problem_id: the first pfile id (1-indexed) that should include a
        mine_factor (create_polycraft_problem2 style); None means no problem gets a mine_factor
        (create_polycraft_problem style).
    """
    for i in range(total_num_problems):
        problem_id = i + 1
        trees_in_map = random.randint(min_trees_in_map, max_trees_in_map)
        mine_factor = (
            round(random.uniform(min_mine_factor, max_mine_factor), 2)
            if mine_factor_start_problem_id is not None and problem_id >= mine_factor_start_problem_id
            else None
        )
        print(f"Generating problem {problem_id} with {trees_in_map} trees and mine_factor={mine_factor}")
        with open(output_folder / f"pfile{problem_id}.pddl", "wt") as problem_file:
            problem_file.write(
                generate_instance(f"instance_{problem_id}", trees_in_map, mine_factor)
            )


def write_to_file_in_main(seed_id, problem_id):
    """Generate a single pfile, matching create_polycraft_problem for ids <= 50
    and create_polycraft_problem2 for ids > 50. Kept for compatibility with
    solution/main.py, which imports this function directly."""
    random.seed(seed_id + 3)
    directory = Path(Config.get_database_dir() / "minecraft" / "instances" / f"seed_{seed_id}")
    directory.mkdir(parents=True, exist_ok=True)
    trees_in_map = random.randint(10, 20)
    mine_factor = round(random.uniform(0, 5), 2) if problem_id > 50 else None

    file_path = directory / f"pfile{problem_id}.pddl"
    print(file_path)
    with open(file_path, "wt") as f:
        f.write(generate_instance(f"instance_{problem_id}", trees_in_map, mine_factor))


def main(seed_id):
    random.seed(seed_id)
    file_path = Path(Config.get_database_dir() / "minecraft" / "instances" / f"seed_{seed_id}")
    file_path.mkdir(parents=True, exist_ok=True)

    generate_multiple_problems(
        output_folder=file_path,
        total_num_problems=100,
        min_trees_in_map=50,
        max_trees_in_map=100,
        min_mine_factor=0.5,
        max_mine_factor=5,
        mine_factor_start_problem_id=51,
    )


if __name__ == "__main__":
    for seed_id in range(1, 6):
        main(seed_id)