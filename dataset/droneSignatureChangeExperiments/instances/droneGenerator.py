#!/usr/bin/python3
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template
from solution.Utilities.config import Config

TEMPLATE_FILE_PATH = Path(__file__).parent / "drone_template.pddl"
GRID_SUM_TOTAL = 4


def generate_instance(instance_name: str, max_x, max_y, max_z, battery_level, battery_level_full,
                      min_factor_value, max_factor_value, num_of_battery_factor,
                      min_dummy_1_value, max_dummy_1_value, num_of_dummy_1,
                      min_dummy_2_value, max_dummy_2_value, num_of_dummy_2,
                      min_dummy_3_value, max_dummy_3_value, num_of_dummy_3) -> str:
    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param max_x: the maximal x coordinate of the grid.
    :param max_y: the maximal y coordinate of the grid.
    :param max_z: the maximal z coordinate of the grid.
    :param battery_level: the initial battery level of the drone.
    :param battery_level_full: the battery level of a fully charged drone.
    :param min_factor_value: the minimal value assigned to a battery factor object.
    :param max_factor_value: the maximal value assigned to a battery factor object.
    :param num_of_battery_factor: the number of battery factor objects in the problem.
    :param min_dummy_1_value: the minimal value assigned to a dummy_1 object.
    :param max_dummy_1_value: the maximal value assigned to a dummy_1 object.
    :param num_of_dummy_1: the number of dummy_1 objects in the problem.
    :param min_dummy_2_value: the minimal value assigned to a dummy_2 object.
    :param max_dummy_2_value: the maximal value assigned to a dummy_2 object.
    :param num_of_dummy_2: the number of dummy_2 objects in the problem.
    :param min_dummy_3_value: the minimal value assigned to a dummy_3 object.
    :param max_dummy_3_value: the maximal value assigned to a dummy_3 object.
    :param num_of_dummy_3: the number of dummy_3 objects in the problem.
    :return: the string representing the planning problem.
    """
    template = get_problem_template(TEMPLATE_FILE_PATH)
    locations = [
        (f"x{x}y{y}z{z}", x, y, z)
        for x in range(max_x + 1)
        for y in range(max_y + 1)
        for z in range(max_z + 1)
    ]
    template_mapping = {
        "instance_name": instance_name,
        "domain_name": "drone",
        "max_x": max_x,
        "max_y": max_y,
        "max_z": max_z,
        "battery_level": battery_level,
        "battery_level_full": battery_level_full,
        "location_list": "\n\t\t".join(
            [
                f"{location} - location"
                for location, _, _, _ in locations
            ]
        ),
        "battery_factor_list": " ".join([f"bf{i}" for i in range(num_of_battery_factor)]) + " - battery_factor",
        "dummy_1_list": " ".join([f"d1{i}" for i in range(num_of_dummy_1)]) + " - dummy_1",
        "dummy_2_list": " ".join([f"d2{i}" for i in range(num_of_dummy_2)]) + " - dummy_2",
        "dummy_3_list": " ".join([f"d3{i}" for i in range(num_of_dummy_3)]) + " - dummy_3",
        "location_coordinates": "\n\t\t".join(
            [
                f"(= (xl {location}) {x})\n\t\t(= (yl {location}) {y})\n\t\t(= (zl {location}) {z})"
                for location, x, y, z in locations
            ]
        ),
        "factor_value": "\n\t\t".join(
            [
                f"(= (factor_value bf{i}) {round(random.uniform(min_factor_value, max_factor_value), 5)})"
                for i in range(num_of_battery_factor)
            ]
        ),
        "dummy_1_value": "\n\t\t".join(
            [
                f"(= (dummy_1_value d1{i}) {round(random.uniform(min_dummy_1_value, max_dummy_1_value), 5)})"
                for i in range(num_of_dummy_1)
            ]
        ),
        "dummy_2_value": "\n\t\t".join(
            [
                f"(= (dummy_2_value d2{i}) {round(random.uniform(min_dummy_2_value, max_dummy_2_value), 5)})"
                for i in range(num_of_dummy_2)
            ]
        ),
        "dummy_3_value": "\n\t\t".join(
            [
                f"(= (dummy_3_value d3{i}) {round(random.uniform(min_dummy_3_value, max_dummy_3_value), 5)})"
                for i in range(num_of_dummy_3)
            ]
        ),
        "visited_list": "\n\t\t".join(
            [
                f"(visited {location})"
                for location, _, _, _ in locations
            ]
        ),
    }

    return template.substitute(template_mapping)


def grid_combinations(sum_total: int) -> list:
    """Enumerate every way to partition sum_total into three non-negative integers.

    :param sum_total: the value the three grid dimensions should sum up to.
    :return: the list of the possible (max_x, max_y, max_z) triplets.
    """
    all_combinations = []
    for group1 in range(sum_total + 1):
        for group2 in range(sum_total - group1 + 1):
            group3 = sum_total - group1 - group2
            all_combinations.append((group1, group2, group3))

    return all_combinations


def generate_multiple_problems(
        output_folder: Path,
        total_num_problems: int,
        # Battery factor mapping
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
) -> NoReturn:
    """Generate multiple problems based on the structured input arguments matching generate_instance."""
    combinations = []
    for i in range(total_num_problems):
        # The grid dimensions are drawn without replacement so that the instance sizes are evenly spread.
        if len(combinations) == 0:
            combinations = grid_combinations(GRID_SUM_TOTAL)

        max_x, max_y, max_z = random.choice(combinations)
        combinations.remove((max_x, max_y, max_z))

        # Battery constraints based on the size of the grid.
        # Keep the battery small: the drone heuristic (custom_heuristic:3) rewards 0.5 per battery unit, so large
        # capacities make recharge loops dominate the search and the planner never reaches the goal.
        grid_size = max_x + max_y + max_z
        battery_full = random.randint(30, 50)
        battery_level = random.randint(0, 5)

        # Randomly sample counts for all components based on their respective maximums
        num_of_battery_factor = random.randint(1, 1)
        num_of_dummy_1 = random.randint(1, 5)
        num_of_dummy_2 = random.randint(1, 5)
        num_of_dummy_3 = random.randint(1, 5)

        instance_name = f"grid_instance_{i + 1}"
        print(f"Generating {instance_name} with a {max_x}x{max_y}x{max_z} grid...")

        with open(output_folder / f"pfile{i + 1}.pddl", "wt") as problem_file:
            problem_content = generate_instance(
                instance_name,
                max_x, max_y, max_z,
                battery_level, battery_full,
                min_factor_value, max_factor_value, num_of_battery_factor,
                min_dummy_1_value, max_dummy_1_value, num_of_dummy_1,
                min_dummy_2_value, max_dummy_2_value, num_of_dummy_2,
                min_dummy_3_value, max_dummy_3_value, num_of_dummy_3
            )
            problem_file.write(problem_content)


def main(seed_id):
    random.seed(seed_id)
    file_path = Path(Config.get_database_dir() / "droneSignatureChangeExperiments" / "instances" / f"seed_{seed_id}")
    file_path.mkdir(parents=True, exist_ok=True)

    generate_multiple_problems(
        output_folder=file_path,
        total_num_problems=50,

        # Battery Factor Config
        min_factor_value=1,
        max_factor_value=1.4,

        # Dummy 1 Config
        min_dummy_1_value=1,
        max_dummy_1_value=1.4,

        # Dummy 2 Config
        min_dummy_2_value=2,
        max_dummy_2_value=5,

        # Dummy 3 Config
        min_dummy_3_value=0.1,
        max_dummy_3_value=1,
    )


if __name__ == "__main__":
    for seed_id in range(1, 6):
        main(seed_id)
