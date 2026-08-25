#!/usr/bin/python3
import argparse
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template
from solution.Utilities.config import Config
TEMPLATE_FILE_PATH = Path("sailing_template.pddl")
DEADZONE_FACTOR = 0.3


def sample_excluding_deadzone(value_range, deadzone_factor: float = DEADZONE_FACTOR) -> float:
    """Sample uniformly from value_range, excluding the middle deadzone_factor
    portion of the range around zero (e.g. for (-150, 150) with the default
    factor, values in (-45, 45) are never returned).

    :param value_range: a (min, max) tuple to sample from.
    :param deadzone_factor: the fraction of each side of the range, measured
        from zero, that is excluded from sampling.
    :return: the sampled value.
    """
    lo, hi = value_range
    deadzone_lo, deadzone_hi = lo * deadzone_factor, hi * deadzone_factor
    left_length = deadzone_lo - lo
    right_length = hi - deadzone_hi
    if random.uniform(0, left_length + right_length) < left_length:
        return random.uniform(lo, deadzone_lo)
    return random.uniform(deadzone_hi, hi)


def generate_instance(instance_name: str, range_xy_pos, num_of_boats,
                       range_d_pos, num_of_people, drift_factor=None) -> str:
    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param range_xy_pos: a (min, max) tuple for boat x/y positions.
    :param num_of_boats: the number of boats in the problem.
    :param range_d_pos: a (min, max) tuple for people's d values.
    :param num_of_people: the number of people in the problem.
    :param drift_factor: the drift_factor value for the problem; None means the
        problem does not include a drift_factor at all.
    :return: the string representing the planning problem.
    """
    template = get_problem_template(TEMPLATE_FILE_PATH)
    template_mapping = {
        "instance_name": instance_name,
        "domain_name": "sailing",
        "boat_name_list": " ".join([f"b{i}" for i in range(num_of_boats)]),
        "people_name_list": " ".join([f"p{i}" for i in range(num_of_people)]),
        "boat_positions": "\n\t\t".join(
            [
                f"(= (x b{i}) {round(sample_excluding_deadzone(range_xy_pos), 0)})\n\t\t"
                f"(= (y b{i}) {round(sample_excluding_deadzone(range_xy_pos), 0)})"
                for i in range(num_of_boats)
            ]
        ),
        "people_d_position": "\n\t\t".join(
            [
                f"(= (d p{i}) {round(sample_excluding_deadzone(range_d_pos), 0)})"
                for i in range(num_of_people)
            ]
        ),
        "drift_factor": f"(= (drift_factor) {drift_factor})" if drift_factor is not None else "",
        "people_to_save": "\n\t\t\t".join(
            [
                f"(saved p{i})"
                for i in range(num_of_people)
            ]
        ),
    }

    return template.substitute(template_mapping)


def parse_arguments() -> argparse.Namespace:
    """Parse the command line arguments."""
    parser = argparse.ArgumentParser(description="Generate sailing planning instances")
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
                               min_drift_factor_problem_id: int = None,
                               min_drift_factor: float = 2, max_drift_factor: float = 5) -> NoReturn:
    """Generate multiple problems based on the input arguments.

    :param output_folder: the path to the output folder where the problems will be saved.
    :param total_num_problems: the number of problem instances to generate.
    :param min_drift_factor_problem_id: the first pfile id (1-indexed) that should include a
        drift_factor; None means no problem gets a drift_factor.
    :param min_drift_factor: the minimal drift_factor value for problems that get one.
    :param max_drift_factor: the maximal drift_factor value for problems that get one.
    """
    for i in range(total_num_problems):
        problem_id = i + 1
        num_boats = 1
        num_people = 1
        xy_range = (-10, 10)
        d_range = (-150, 150)
        drift_factor = (
            round(random.uniform(min_drift_factor, max_drift_factor), 5)
            if min_drift_factor_problem_id is not None and problem_id >= min_drift_factor_problem_id
            else None
        )
        instance_name = f"instance_{problem_id}"
        print(f"Generating {instance_name} with {num_people} people, {num_boats} boats and drift_factor={drift_factor}")

        with open(output_folder / f"pfile{problem_id}.pddl", "wt") as problem_file:
            problem_file.write(
                generate_instance(
                    instance_name,
                    xy_range, num_boats,
                    d_range, num_people,
                    drift_factor=drift_factor,
                )
            )


def main(seed_id):
    random.seed(seed_id)
    file_path = Path(Config.get_database_dir() / "sailing" / "instances" / f"seed_{seed_id}")
    file_path.mkdir(parents=True, exist_ok=True)
    generate_multiple_problems(
        output_folder=file_path,
        total_num_problems=100,
        min_drift_factor_problem_id=51,
        min_drift_factor=2,
        max_drift_factor=3.5,
    )


if __name__ == "__main__":
    for seed_id in range(1, 6):
        main(seed_id)