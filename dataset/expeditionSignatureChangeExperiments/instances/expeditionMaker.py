#!/usr/bin/python3
import argparse
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template
from solution.Utilities.config import Config
TEMPLATE_FILE_PATH = Path("expedition_template.pddl")


def generate_instance(instance_name: str, min_factor_value, max_factor_value, num_of_factor,
                       min_dummy_1_value, max_dummy_1_value, num_of_dummy_1,
                       min_dummy_2_value, max_dummy_2_value, num_of_dummy_2,
                       min_dummy_3_value, max_dummy_3_value, num_of_dummy_3,
                       num_of_sleds, min_sled_capacity, max_sled_capacity,
                       num_of_waypoints, min_waypoint_supplies, max_waypoint_supplies) -> str:
    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param min_factor_value: the minimal value assigned to a factor object.
    :param max_factor_value: the maximal value assigned to a factor object.
    :param num_of_factor: the number of factor objects in the problem.
    :param min_dummy_1_value: the minimal value assigned to a dummy_1 object.
    :param max_dummy_1_value: the maximal value assigned to a dummy_1 object.
    :param num_of_dummy_1: the number of dummy_1 objects in the problem.
    :param min_dummy_2_value: the minimal value assigned to a dummy_2 object.
    :param max_dummy_2_value: the maximal value assigned to a dummy_2 object.
    :param num_of_dummy_2: the number of dummy_2 objects in the problem.
    :param min_dummy_3_value: the minimal value assigned to a dummy_3 object.
    :param max_dummy_3_value: the maximal value assigned to a dummy_3 object.
    :param num_of_dummy_3: the number of dummy_3 objects in the problem.
    :param num_of_sleds: the number of sleds in the problem.
    :param min_sled_capacity: the minimal sled capacity value.
    :param max_sled_capacity: the maximal sled capacity value.
    :param num_of_waypoints: the number of waypoints in the problem.
    :param min_waypoint_supplies: the minimal supplies value for waypoints other than the first.
    :param max_waypoint_supplies: the maximal supplies value for waypoints other than the first.
    :return: the string representing the planning problem.
    """
    template = get_problem_template(TEMPLATE_FILE_PATH)
    final_waypoint = num_of_waypoints - 1
    sled_capacity_list = [ random.uniform(min_sled_capacity, max_sled_capacity) for i in range(num_of_sleds) ]
    template_mapping = {
        "instance_name": instance_name,
        "domain_name": "expedition",
        "factor_list": " ".join([f"f{i}" for i in range(num_of_factor)]),
        "dummy_1_list": " ".join([f"d1_{i}" for i in range(num_of_dummy_1)]),
        "dummy_2_list": " ".join([f"d2_{i}" for i in range(num_of_dummy_2)]),
        "dummy_3_list": " ".join([f"d3_{i}" for i in range(num_of_dummy_3)]),
        "sled_list": " ".join([f"s{i}" for i in range(num_of_sleds)]),
        "waypoint_list": " ".join([f"w0_{i}" for i in range(num_of_waypoints)]),
        "factor_value": "\n\t\t".join(
            [
                f"(= (factor_value f{i}) {random.uniform(min_factor_value, max_factor_value)})"
                for i in range(num_of_factor)
            ]
        ),
        "dummy_1_value": "\n\t\t".join(
            [
                f"(= (dummy_1_value d1_{i}) {random.uniform(min_dummy_1_value, max_dummy_1_value)})"
                for i in range(num_of_dummy_1)
            ]
        ),
        "dummy_2_value": "\n\t\t".join(
            [
                f"(= (dummy_2_value d2_{i}) {random.uniform(min_dummy_2_value, max_dummy_2_value)})"
                for i in range(num_of_dummy_2)
            ]
        ),
        "dummy_3_value": "\n\t\t".join(
            [
                f"(= (dummy_3_value d3_{i}) {random.uniform(min_dummy_3_value, max_dummy_3_value)})"
                for i in range(num_of_dummy_3)
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
                f"(is_next w0_{i} w0_{i+1})"
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
        output_folder: Path,
        total_num_problems: int,
        # Factor mapping
        min_factor_value,
        max_factor_value,
        # Dummy 1 mapping
        min_dummy_1_value,
        max_dummy_1_value,
        # Dummy 2 mapping
        min_dummy_2_value,
        max_dummy_2_value,
        # Dummy 3 mapping
        min_dummy_3_value,
        max_dummy_3_value,
        # Waypoints mapping
        min_waypoint_supplies,
        max_waypoint_supplies,
) -> NoReturn:
    """Generate multiple problems based on the structured input arguments matching generate_instance."""

    for i in range(total_num_problems):
        # Randomly sample counts for all components based on their respective maximums
        num_of_factor = random.randint(1, 5)
        num_of_dummy_1 = random.randint(1, 5)
        num_of_dummy_2 = random.randint(1, 5)
        num_of_dummy_3 = random.randint(1, 5)
        num_of_sleds = random.randint(1, 1)
        num_of_waypoints = random.randint(5, 5)
        min_sled_capacity = num_of_waypoints + 5
        max_sled_capacity = 2 * num_of_waypoints + 5

        instance_name = f"instance_{i + 1}"
        print(f"Generating {instance_name} with {num_of_factor} factors and {num_of_sleds} sleds...")

        with open(output_folder / f"pfile{i + 1}.pddl", "wt") as problem_file:
            # Positional arguments perfectly ordered to match your signature:
            # generate_instance(instance_name, factor, dummy1, dummy2, dummy3, sleds, waypoints)
            problem_content = generate_instance(
                instance_name,
                min_factor_value, max_factor_value, num_of_factor,
                min_dummy_1_value, max_dummy_1_value, num_of_dummy_1,
                min_dummy_2_value, max_dummy_2_value, num_of_dummy_2,
                min_dummy_3_value, max_dummy_3_value, num_of_dummy_3,
                num_of_sleds, min_sled_capacity, max_sled_capacity,
                num_of_waypoints, min_waypoint_supplies, max_waypoint_supplies
            )
            problem_file.write(problem_content)


def main(seed_id):
    random.seed(seed_id)
    file_path = Path(Config.get_database_dir() / "expeditionSignatureChangeExperiments" / "instances" / f"seed_{seed_id}")
    file_path.mkdir(parents=True, exist_ok=True)

    generate_multiple_problems(
        output_folder=file_path,
        total_num_problems=50,

        # Factor Config (e.g., Axes)
        min_factor_value=0.5,
        max_factor_value=1,

        # Dummy 1 Config (e.g., Pickaxes)
        min_dummy_1_value=0.5,
        max_dummy_1_value=1,

        # Dummy 2 Config (e.g., Shovels)
        min_dummy_2_value=1,
        max_dummy_2_value=10,

        # Dummy 3 Config (e.g., Hoes)
        min_dummy_3_value=1,
        max_dummy_3_value=100,

        # Waypoints Config (Added to match signature)
        min_waypoint_supplies=0,
        max_waypoint_supplies=0,
    )


if __name__ == "__main__":
    for seed_id in range(1,6):
        main(seed_id)

