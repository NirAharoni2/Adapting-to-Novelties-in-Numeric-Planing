#!/usr/bin/python3
import argparse
import random
from pathlib import Path
from typing import NoReturn

from common import get_problem_template
from solution.Utilities.config import Config
TEMPLATE_FILE_PATH = Path("A_sailing_template.pddl")


def generate_instance(instance_name: str, range_xy_pos, num_of_boats,
                                          range_d_pos, num_of_people,
                                          range_d_pos_dummy1, num_of_dummy_1,
                                          range_d_pos_dummy2, num_of_dummy_2,
                                          range_d_pos_dummy3, num_of_dummy_3,
                      ) -> str:

    """Generate a single planning problem instance.

    :param instance_name: the name of the problem instance.
    :param num_counters: the number of counters in the problem.
    :param max_int: the maximal integer value.
    :return: the string representing the planning problem.
    """
    template = get_problem_template(TEMPLATE_FILE_PATH)
    template_mapping = {
        "instance_name": instance_name,
        "domain_name": "sailing",
        "boat_name_list": " ".join([f"b{i}" for i in range(num_of_boats)]),
        "dummy_1_list": " ".join([f"d1_{i}" for i in range(num_of_dummy_1)]),
        "dummy_2_list": " ".join([f"d2_{i}" for i in range(num_of_dummy_2)]),
        "dummy_3_list": " ".join([f"d3_{i}" for i in range(num_of_dummy_3)]),
        "people_name_list": " ".join([f"p{i}" for i in range(num_of_people)]),
        "boat_positions": "\n\t\t".join(
            [
                f"(= (x b{i}) {round(random.uniform(*range_xy_pos), 0)})\n\t\t"
                f"(= (y b{i}) {round(random.uniform(*range_xy_pos), 0)})"
                for i in range(num_of_boats)
            ]
        ),
        "people_d_position": "\n\t\t".join(
            [
                f"(= (d p{i}) {round(random.uniform(*range_d_pos), 0)})"
                for i in range(num_of_people)
            ]
        ),
        "dummy_1_d_position": "\n\t\t".join(
            [
                f"(= (dummy_1_d d1_{i}) {round(random.uniform(*range_d_pos_dummy1), 0)})"
                for i in range(num_of_dummy_1)
            ]
        ),
        "dummy_2_d_position": "\n\t\t".join(
            [
                f"(= (dummy_2_d d2_{i}) {round(random.uniform(*range_d_pos_dummy2), 0)})"
                for i in range(num_of_dummy_2)
            ]
        ),
        "dummy_3_d_position": "\n\t\t".join(
            [
                f"(= (dummy_3_d d3_{i}) {round(random.uniform(*range_d_pos_dummy3), 0)})"
                for i in range(num_of_dummy_3)
            ]
        ),
        "people_to_save": "\n\t\t\t".join(
            [
                f"(saved p{i})"
                for i in range(num_of_people)
            ]
        )

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


from pathlib import Path
import random
from typing import NoReturn


# Assuming generate_instance and Config are imported
# from your_module import generate_instance, Config

def generate_multiple_problems(
        output_folder: Path,
        total_num_problems: int,
) -> NoReturn:
    """Generate multiple problems based on the structured input arguments matching generate_instance."""

    for i in range(total_num_problems):
        # Randomly sample counts for all components based on their respective maximums
        num_of_dummy_1 = random.randint(1, 5)
        num_of_dummy_2 = random.randint(1, 5)
        num_of_dummy_3 = random.randint(1, 5)
        num_boats = 2
        num_people = 2
        xy_range = (-10, 10)
        d_range = (-150, 150)
        dummy1_d_range = (-150, 150)
        dummy2_d_range = (-15, 15)
        dummy3_d_range = (-1500, 1500)
        instance_name = f"instance_{i + 1}"
        print(f"Generating {instance_name} with {num_people} factors and {num_boats} sleds...")

        with open(output_folder / f"pfile{i + 1}.pddl", "wt") as problem_file:
            # Positional arguments perfectly ordered to match your signature:
            # generate_instance(instance_name, factor, dummy1, dummy2, dummy3, sleds, waypoints)
            problem_content = generate_instance(
                instance_name,
                xy_range, num_boats,
                d_range, num_people,
                dummy1_d_range, num_of_dummy_1,
                dummy2_d_range, num_of_dummy_2,
                dummy3_d_range, num_of_dummy_3,

            )
            problem_file.write(problem_content)


def main():
    # Note: If your values need to be floats (like 0.1 or 1.5), pass them as float
    # literals (0.1) instead of int(0.1), which rounds down to 0.
    # Assuming integer logic here based on your int() casts:
    generate_multiple_problems(
        output_folder=Path(Config.get_database_dir() / "sailingLvl2Experiments" / "instances"),
        total_num_problems=100,
    )


if __name__ == "__main__":
    main()

