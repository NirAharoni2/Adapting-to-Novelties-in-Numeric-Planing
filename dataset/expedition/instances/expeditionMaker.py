#!/usr/bin/python3
import argparse
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template
from solution.Utilities.config import Config

TEMPLATE_FILE_PATH = Path("expedition_template.pddl")


def generate_instance(instance_name: str, num_of_sleds: int, num_of_waypoints: int,
                       min_sled_capacity, max_sled_capacity,
                       min_waypoint_supplies, max_waypoint_supplies, num_of_factor: int = 0) -> str:
    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param num_of_sleds: the number of sleds in the problem.
    :param num_of_waypoints: the number of waypoints in the problem.
    :param min_sled_capacity: the minimal sled capacity value.
    :param max_sled_capacity: the maximal sled capacity value.
    :param min_waypoint_supplies: the minimal supplies value for waypoints other than the first.
    :param max_waypoint_supplies: the maximal supplies value for waypoints other than the first.
    :param num_of_factor: the number of factor objects to add to the problem (0 = none).
    :return: the string representing the planning problem.
    """
    template = get_problem_template(TEMPLATE_FILE_PATH)
    final_waypoint = num_of_waypoints - 1
    sled_capacity_list = [random.uniform(min_sled_capacity, max_sled_capacity) for _ in range(num_of_sleds)]
    template_mapping = {
        "instance_name": instance_name,
        "domain_name": "expedition",
        "sled_list": " ".join([f"s{i}" for i in range(num_of_sleds)]),
        "waypoint_list": " ".join([f"w0_{i}" for i in range(num_of_waypoints)]),
        "factor": "\n\t\t".join(
            [
                f"(= (factor) {round(random.uniform(0.5, 1), 5)})"
                for i in range(num_of_factor)
            ]
        ),
        "sled_capacity": "\n\t\t".join(
            [
                f"(= (sled_capacity s{i}) {sled_capacity_list[i]})"
                for i in range(num_of_sleds)
            ]
        ),
        "sled_supplies": "\n\t\t".join(
            [
                f"(= (sled_supplies s{i}) {random.uniform(0, num_of_waypoints)})"
                for i in range(num_of_sleds)
            ]
        ),
        "waypoint_supplies": "\n\t\t".join(
            [
                f"(= (waypoint_supplies w0_{i}) {1000 if i == 0 else random.uniform(min_waypoint_supplies, max_waypoint_supplies)})"
                for i in range(num_of_waypoints)
            ]
        ),
        "is_next": "\n\t\t".join(
            [
                f"(is_next w0_{i} w0_{i + 1})"
                for i in range(num_of_waypoints - 1)
            ]
        ),
        "at_start": "\n\t\t".join(
            [
                f"(at s{i} w0_0)"
                for i in range(num_of_sleds)
            ]
        ),
        "at_end": "\n\t\t".join(
            [
                f"(at s{i} w0_{final_waypoint})"
                for i in range(num_of_sleds)
            ]
        ),
    }

    return template.substitute(template_mapping)


def parse_arguments() -> argparse.Namespace:
    """Parse the command line arguments."""
    parser = argparse.ArgumentParser(description="Generate expedition planning instances")
    parser.add_argument(
        "--min_waypoints",
        required=True,
        help="Minimal number of waypoints in the problems",
    )
    parser.add_argument(
        "--max_waypoints",
        required=True,
        help="Maximal number of waypoints in the problems",
    )
    parser.add_argument(
        "--output_path",
        required=True,
        help="The path to the output folder where the problems will be saved",
    )
    args = parser.parse_args()
    return args


def generate_multiple_problems(output_folder: Path, total_num_problems: int,
                               min_num_of_sleds: int, max_num_of_sleds: int,
                               min_num_of_waypoints: int, max_num_of_waypoints: int,
                               min_factor_problem_id: int = None,
                               min_num_of_factor: int = 2, max_num_of_factor: int = 5) -> NoReturn:
    """Generate multiple problems based on the input arguments.

    :param output_folder: the path to the output folder where the problems will be saved.
    :param total_num_problems: the number of problem instances to generate.
    :param min_num_of_sleds: the minimal number of sleds possible in the problems.
    :param max_num_of_sleds: the maximal number of sleds possible in the problems.
    :param min_num_of_waypoints: the minimal number of waypoints possible in the problems.
    :param max_num_of_waypoints: the maximal number of waypoints possible in the problems.
    :param min_factor_problem_id: the first pfile id (1-indexed) that should contain factor objects;
        None means no problem gets factor objects.
    :param min_num_of_factor: the minimal number of factor objects in problems that get factors.
    :param max_num_of_factor: the maximal number of factor objects in problems that get factors.
    """
    for i in range(total_num_problems):
        problem_id = i + 1
        num_of_sleds = random.randint(min_num_of_sleds, max_num_of_sleds)
        num_of_waypoints = random.randint(min_num_of_waypoints, max_num_of_waypoints)
        min_sled_capacity = num_of_waypoints + 5
        max_sled_capacity = 2 * num_of_waypoints + 5
        num_of_factor = (
            random.randint(min_num_of_factor, max_num_of_factor)
            if min_factor_problem_id is not None and problem_id >= min_factor_problem_id
            else 0
        )
        print(f"Generating problem with {num_of_sleds} sleds, {num_of_waypoints} waypoints and {num_of_factor} factors")
        with open(output_folder / f"pfile{problem_id}.pddl", "wt") as problem_file:
            problem_file.write(
                generate_instance(
                    f"instance_{problem_id}", num_of_sleds, num_of_waypoints,
                    min_sled_capacity, max_sled_capacity,
                    min_waypoint_supplies=0, max_waypoint_supplies=0,
                    num_of_factor=num_of_factor,
                )
            )


def main(seed_id):
    random.seed(seed_id)
    file_path = Path(Config.get_database_dir() / "expedition" / "instances" / f"seed_{seed_id}")
    file_path.mkdir(parents=True, exist_ok=True)

    generate_multiple_problems(
        output_folder=file_path,
        total_num_problems=100,
        min_num_of_sleds=1,
        max_num_of_sleds=1,
        min_num_of_waypoints=5,
        max_num_of_waypoints=5,
        min_factor_problem_id=51,
        min_num_of_factor=2,
        max_num_of_factor=5,
    )


if __name__ == "__main__":
    for seed_id in range(1,6):
        main(seed_id)