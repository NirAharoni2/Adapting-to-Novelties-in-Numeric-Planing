def generate_sailing_problem(boat_positions, person_d_values, problem_name="sailing_problem", seed=1234):
    lines = []

    lines.append(f";; Automatically generated sailing problem")
    lines.append(f";;Setting seed to {seed}")
    lines.append(f"(define (problem {problem_name})")
    lines.append("")
    lines.append(f"\t(:domain sailing)")
    lines.append("")
    lines.append(f"\t(:objects")

    # Boats
    boat_line = "\t\t" + " ".join([f"b{i}" for i in range(len(boat_positions))]) + "  - boat"
    lines.append(boat_line)

    # Persons
    person_line = "\t\t" + " ".join([f"p{i}" for i in range(len(person_d_values))]) + "  - person"
    lines.append(person_line)

    lines.append(f"\t)")
    lines.append("")
    lines.append(f"\t(:init")

    # Boat positions
    for i, (x, y) in enumerate(boat_positions):
        lines.append(f"\t\t(= (x b{i}) {x})")
        lines.append(f"\t\t(= (y b{i}) {y})")

    lines.append("")

    # Person d-values
    for i, d in enumerate(person_d_values):
        lines.append(f"\t\t(= (d p{i}) {d})")

    lines.append("")
    lines.append(f"\t)")
    lines.append("")
    lines.append(f"\t(:goal")
    lines.append(f"\t\t(and")

    # Goals: saved each person
    for i in range(len(person_d_values)):
        lines.append(f"\t\t\t(saved p{i})")

    lines.append(f"\t\t)")
    lines.append(f"\t)")
    lines.append(f")")

    return "\n".join(lines)


import random

def generate_random_sailing_instance(
    num_boats=1,
    num_people=1,
    x_range=(-10, 10),
    y_range=(-10, 10),
    d_range=(-150, 150),
    seed=None
):
    if seed is not None:
        random.seed(seed)

    boat_positions = [
        (round(random.uniform(*x_range), 0), round(random.uniform(*y_range), 0))
        for _ in range(num_boats)
    ]

    person_d_values = [
        round(random.uniform(*d_range), 0)
        for _ in range(num_people)
    ]

    return boat_positions, person_d_values


import os
import random

def write_sailing_instances_to_file(num_instances, output_dir, seed_start=1):
    os.makedirs(output_dir, exist_ok=True)

    for i in range(num_instances):
        problem_id = seed_start + i
        problem_name = f"instance_{problem_id}"

        # Generate random boats and people
        boat_positions, person_d_values = generate_random_sailing_instance()

        # Generate PDDL problem content
        content = generate_sailing_problem(
            boat_positions,
            person_d_values,
            problem_name=problem_name,
            seed=problem_id
        )

        # File output
        file_path = os.path.join(output_dir, f"pfile{problem_id}.pddl")
        with open(file_path, 'w') as f:
            f.write(content)

write_sailing_instances_to_file(
    num_instances=40,
    output_dir=r"C:\newProject\ipc2023-dataset\sailing\instances",
    seed_start=1
)
