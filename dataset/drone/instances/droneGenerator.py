#!/usr/bin/python3
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template
from solution.Utilities.config import Config

TEMPLATE_FILE_PATH = Path(__file__).parent / "drone_template.pddl"
GRID_SUM_TOTAL = 4


def generate_instance(instance_name: str, max_x, max_y, max_z,
                      battery_level, battery_level_full, battery_factor=None) -> str:
    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param max_x: the maximal x coordinate of the grid.
    :param max_y: the maximal y coordinate of the grid.
    :param max_z: the maximal z coordinate of the grid.
    :param battery_level: the initial battery level of the drone.
    :param battery_level_full: the battery level of a fully charged drone.
    :param battery_factor: the battery_factor value for the problem; None means the
        problem does not include a battery_factor at all.
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
        "domain_name": "domain_name",
        "max_x": max_x,
        "max_y": max_y,
        "max_z": max_z,
        "battery_level": battery_level,
        "battery_level_full": battery_level_full,
        "location_list": " ".join([location for location, _, _, _ in locations]) + " - location",
        "location_coordinates": "\n\t\t".join(
            [
                f"(= (xl {location}) {x})\n\t\t(= (yl {location}) {y})\n\t\t(= (zl {location}) {z})"
                for location, x, y, z in locations
            ]
        ),
        "battery_factor": f"(= (battery_factor) {battery_factor})" if battery_factor is not None else "",
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


def generate_multiple_problems(output_folder: Path, total_num_problems: int,
                               min_battery_factor_problem_id: int = None,
                               min_battery_factor: float = 2, max_battery_factor: float = 5) -> NoReturn:
    """Generate multiple problems based on the input arguments.

    :param output_folder: the path to the output folder where the problems will be saved.
    :param total_num_problems: the number of problem instances to generate.
    :param min_battery_factor_problem_id: the first pfile id (1-indexed) that should include a
        battery_factor; None means no problem gets a battery_factor.
    :param min_battery_factor: the minimal battery_factor value for problems that get one.
    :param max_battery_factor: the maximal battery_factor value for problems that get one.
    """
    combinations = []
    for i in range(total_num_problems):
        problem_id = i + 1
        # The grid dimensions are drawn without replacement so that the instance sizes are evenly spread.
        if len(combinations) == 0:
            combinations = grid_combinations(GRID_SUM_TOTAL)

        max_x, max_y, max_z = random.choice(combinations)
        combinations.remove((max_x, max_y, max_z))

        # Battery constraints based on the size of the grid
        grid_size = max_x + max_y + max_z
        battery_full = random.randint(30, 50)
        battery_level = random.randint(0, 5)
        battery_factor = (
            round(random.uniform(min_battery_factor, max_battery_factor), 5)
            if min_battery_factor_problem_id is not None and problem_id >= min_battery_factor_problem_id
            else None
        )
        instance_name = f"grid_instance_{problem_id}"
        print(f"Generating {instance_name} with a {max_x}x{max_y}x{max_z} grid and battery_factor={battery_factor}")

        with open(output_folder / f"pfile{problem_id}.pddl", "wt") as problem_file:
            problem_file.write(
                generate_instance(
                    instance_name,
                    max_x, max_y, max_z,
                    battery_level, battery_full,
                    battery_factor=battery_factor,
                )
            )


def main(seed_id):
    random.seed(seed_id)
    file_path = Path(Config.get_database_dir() / "drone" / "instances" / f"seed_{seed_id}")
    file_path.mkdir(parents=True, exist_ok=True)
    generate_multiple_problems(
        output_folder=file_path,
        total_num_problems=100,
        min_battery_factor_problem_id=51,
        min_battery_factor=2,
        max_battery_factor=5,
    )


if __name__ == "__main__":
    for seed_id in range(1, 6):
        main(seed_id)
