
import random
import os

def generate_pddl_instance_string(max_x, max_y, max_z, battery_level, battery_level_full, problem_name):
    def location_name(x, y, z):
        return f"x{x}y{y}z{z}"

    locations = [
        location_name(x, y, z)
        for x in range(max_x+1)
        for y in range(max_y+1)
        for z in range(max_z+1)
    ]

    lines = []
    lines.append(f";;Instance with {max_x}x{max_y}x{max_z} points")
    lines.append(f"(define (problem {problem_name})")
    lines.append(f"    (:domain domain_name)")
    lines.append(f"    (:objects")
    for loc in locations:
        lines.append(f"        {loc} - location")
    lines.append("    )")

    lines.append(f"    (:init")
    lines.append(f"        (= (x) 0)")
    lines.append(f"        (= (y) 0)")
    lines.append(f"        (= (z) 0)")
    lines.append(f"        (= (min_x) 0)")
    lines.append(f"        (= (max_x) {max_x})")
    lines.append(f"        (= (min_y) 0)")
    lines.append(f"        (= (max_y) {max_y})")
    lines.append(f"        (= (min_z) 0)")
    lines.append(f"        (= (max_z) {max_z})")

    for loc in locations:
        x = int(loc.split('x')[1].split('y')[0])
        y = int(loc.split('y')[1].split('z')[0])
        z = int(loc.split('z')[1])
        lines.append(f"        (= (xl {loc}) {x})")
        lines.append(f"        (= (yl {loc}) {y})")
        lines.append(f"        (= (zl {loc}) {z})")

    lines.append(f"        (= (battery-level) {battery_level})")
    lines.append(f"        (= (battery-level-full) {battery_level_full})")
    lines.append("    )")

    lines.append(f"    (:goal (and")
    for loc in locations:
        lines.append(f"        (visited {loc})")
    lines.append(f"        (= (x) 0)")
    lines.append(f"        (= (y) 0)")
    lines.append(f"        (= (z) 0)")
    lines.append("    ))")
    lines.append(")")
    lines.append(";; end of the problem instance")

    return "\n".join(lines)


def write_grid_instances(num_instances):
    start_id = 1
    sum_total = 4
    combinations = []
    # Go over every possible way to partition `sum_total` into 3 non-negative integers
    def reload():
        all_combinations = []
        for group1 in range(sum_total + 1):
            for group2 in range(sum_total - group1 + 1):
                group3 = sum_total - group1 - group2
                all_combinations.append((group1, group2, group3))
        return all_combinations

    for problem_id in range(start_id, start_id+num_instances):
        # Random dimensions (small enough to keep the problem size reasonable)
        #randomly splits the number 6 into three non-negative integers that sum to 6.


        # Randomly remove one combination from the list
        if len(combinations) == 0:
            combinations = reload()
        removed = random.choice(combinations)
        combinations.remove(removed)

        max_x = removed[0]
        max_y = removed[1]
        max_z = removed[2]

        # Battery constraints based on number of locations
        battery_full = random.randint(3*(max_x + max_y + max_z), 4*(max_x + max_y + max_z))
        battery_level = random.randint(battery_full//2, battery_full)

        content = generate_pddl_instance_string(
            max_x=max_x,
            max_y=max_y,
            max_z=max_z,
            battery_level=battery_level,
            battery_level_full=battery_full,
            problem_name=f"grid_instance_{problem_id}"
        )

        file_path = rf"C:\newProject\ipc2023-dataset\drone\instances\pfile{problem_id}.pddl"
        with open(file_path, "w") as f:
            f.write(content)

def generate_pddl_instance_string2(max_x, max_y, max_z, battery_level, battery_level_full, problem_name, battery_factor):
    def location_name(x, y, z):
        return f"x{x}y{y}z{z}"

    locations = [
        location_name(x, y, z)
        for x in range(max_x+1)
        for y in range(max_y+1)
        for z in range(max_z+1)
    ]

    lines = []
    lines.append(f";;Instance with {max_x}x{max_y}x{max_z} points")
    lines.append(f"(define (problem {problem_name})")
    lines.append(f"    (:domain domain_name)")
    lines.append(f"    (:objects")
    for loc in locations:
        lines.append(f"        {loc} - location")
    lines.append("    )")

    lines.append(f"    (:init")
    lines.append(f"        (= (x) 0)")
    lines.append(f"        (= (y) 0)")
    lines.append(f"        (= (z) 0)")
    lines.append(f"        (= (min_x) 0)")
    lines.append(f"        (= (max_x) {max_x})")
    lines.append(f"        (= (min_y) 0)")
    lines.append(f"        (= (max_y) {max_y})")
    lines.append(f"        (= (min_z) 0)")
    lines.append(f"        (= (max_z) {max_z})")

    for loc in locations:
        x = int(loc.split('x')[1].split('y')[0])
        y = int(loc.split('y')[1].split('z')[0])
        z = int(loc.split('z')[1])
        lines.append(f"        (= (xl {loc}) {x})")
        lines.append(f"        (= (yl {loc}) {y})")
        lines.append(f"        (= (zl {loc}) {z})")

    lines.append(f"        (= (battery-level) {battery_level})")
    lines.append(f"        (= (battery-level-full) {battery_level_full})")
    lines.append(f"        (= (battery_factor) {battery_factor})")
    lines.append("    )")

    lines.append(f"    (:goal (and")
    for loc in locations:
        lines.append(f"        (visited {loc})")
    lines.append(f"        (= (x) 0)")
    lines.append(f"        (= (y) 0)")
    lines.append(f"        (= (z) 0)")
    lines.append("    ))")
    lines.append(")")
    lines.append(";; end of the problem instance")

    return "\n".join(lines)

def write_grid_instances2(num_instances):
    start_id = 51
    sum_total = 4
    combinations = []
    # Go over every possible way to partition `sum_total` into 3 non-negative integers
    def reload():
        all_combinations = []
        for group1 in range(sum_total + 1):
            for group2 in range(sum_total - group1 + 1):
                group3 = sum_total - group1 - group2
                all_combinations.append((group1, group2, group3))
        return all_combinations

    for problem_id in range(start_id, start_id+num_instances):
        # Random dimensions (small enough to keep the problem size reasonable)
        #randomly splits the number 6 into three non-negative integers that sum to 6.


        # Randomly remove one combination from the list
        if len(combinations) == 0:
            combinations = reload()
        removed = random.choice(combinations)
        combinations.remove(removed)

        max_x = removed[0]
        max_y = removed[1]
        max_z = removed[2]

        # Battery constraints based on number of locations
        battery_full = random.randint(3*(max_x + max_y + max_z), 4*(max_x + max_y + max_z))
        battery_level = random.randint(battery_full//2, battery_full)
        battery_factor = round(random.uniform(2, 5),5)

        content = generate_pddl_instance_string2(
            max_x=max_x,
            max_y=max_y,
            max_z=max_z,
            battery_level=battery_level,
            battery_level_full=battery_full,
            problem_name=f"grid_instance_{problem_id}",
            battery_factor = battery_factor
        )

        file_path = rf"C:\newProject\ipc2023-dataset\drone\instances\pfile{problem_id}.pddl"
        with open(file_path, "w") as f:
            f.write(content)

write_grid_instances(50)