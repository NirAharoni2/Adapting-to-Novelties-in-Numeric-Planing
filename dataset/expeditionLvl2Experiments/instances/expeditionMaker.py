import random


def generate_pddl_problem(sleds, waypoint_supplies, problem_name="instance_0"):
    num_waypoints = len(waypoint_supplies)

    # Define sled and waypoint names
    sled_names = [f"s{i}" for i in range(len(sleds))]
    waypoint_names = [f"w0_{i}" for i in range(num_waypoints)]

    # Build :objects section
    objects_section = "  (:objects\n"
    objects_section += "    " + " ".join(sled_names) + " - sled\n"
    objects_section += "    " + " ".join(waypoint_names) + " - waypoint\n"
    objects_section += "  )"

    # Build :init section
    init_lines = ["  (:init"]
    for i, (capacity, supply, location, _) in enumerate(sleds):
        sled = f"s{i}"
        loc = f"w0_{location}"
        init_lines.append(f"    (at {sled} {loc})")
        init_lines.append(f"    (= (sled_capacity {sled}) {capacity})")
        init_lines.append(f"    (= (sled_supplies {sled}) {supply})")

    for i, supply in enumerate(waypoint_supplies):
        wp = f"w0_{i}"
        init_lines.append(f"    (= (waypoint_supplies {wp}) {supply})")

    for i in range(num_waypoints - 1):
        wp1 = f"w0_{i}"
        wp2 = f"w0_{i + 1}"
        init_lines.append(f"    (is_next {wp1} {wp2})")

    init_lines.append("  )")
    init_section = "\n".join(init_lines)

    # Build :goal section
    goal_lines = ["  (:goal", "    (and"]
    for i, sled in enumerate(sleds):
        sled_name = f"s{i}"
        goal_wp = f"w0_{sled[3]}"
        goal_lines.append(f"      (at {sled_name} {goal_wp})")
    goal_lines.append("    )")
    goal_lines.append("  )")
    goal_section = "\n".join(goal_lines)

    # Wrap everything in define block
    pddl_problem = f"(define (problem {problem_name})\n"
    pddl_problem += "  (:domain expedition)\n\n"
    pddl_problem += objects_section + "\n\n"
    pddl_problem += init_section + "\n\n"
    pddl_problem += goal_section + "\n)"

    return pddl_problem

def write_to_file(num_instances):
    import random

    problem_id = 1

    for _ in range(num_instances):
        # Randomly choose number of waypoints (between 5 and 6, inclusive)
        number_of_waypoints = random.randint(5, 5)

        # Randomly pick capacities in a valid range
        min_capacity = number_of_waypoints + 1
        max_capacity = 2 * number_of_waypoints

        capacity_s0 = random.randint(min_capacity, max_capacity)
        capacity_s1 = random.randint(min_capacity, max_capacity)

        # Random supply values (each must be <= its sled's capacity)
        supply_s0 = random.randint(0, capacity_s0)
        supply_s1 = random.randint(0, capacity_s1)

        sleds = [
            (capacity_s0, supply_s0, 0, number_of_waypoints - 1)
        ]

        # Set supply at first waypoint
        waypoint_supplies = [0] * number_of_waypoints
        waypoint_supplies[0] = 1000

        file_path = rf"C:\newProject\ipc2023-dataset\expedition\instances\pfile{problem_id}.pddl"
        content = generate_pddl_problem(sleds, waypoint_supplies, f"instance_{problem_id}")

        with open(file_path, 'w') as f:
            f.write(content)

        problem_id += 1

def generate_pddl_problem_with_factor(sleds, waypoint_supplies, num_of_factors, problem_name="instance_0"):
    num_waypoints = len(waypoint_supplies)

    # Define sled and waypoint names
    sled_names = [f"s{i}" for i in range(len(sleds))]
    waypoint_names = [f"w0_{i}" for i in range(num_waypoints)]

    # Build :objects section
    objects_section = "  (:objects\n"
    objects_section += "    " + " ".join(sled_names) + " - sled\n"
    objects_section += "    " + " ".join(waypoint_names) + " - waypoint\n"
    objects_section += "    " + " ".join([f"f{i}" for i in range(num_of_factors)]) + " - factor\n"

    objects_section += "  )"

    # Build :init section
    init_lines = ["  (:init"]
    for i, (capacity, supply, location, _) in enumerate(sleds):
        sled = f"s{i}"
        loc = f"w0_{location}"
        init_lines.append(f"    (at {sled} {loc})")
        init_lines.append(f"    (= (sled_capacity {sled}) {capacity})")
        init_lines.append(f"    (= (sled_supplies {sled}) {supply})")
    for i in range(num_of_factors):
        init_lines.append(f"    (= (value f{i}) {round(random.uniform(0.5, 1),5)})")

    for i, supply in enumerate(waypoint_supplies):
        wp = f"w0_{i}"
        init_lines.append(f"    (= (waypoint_supplies {wp}) {supply})")

    for i in range(num_waypoints - 1):
        wp1 = f"w0_{i}"
        wp2 = f"w0_{i + 1}"
        init_lines.append(f"    (is_next {wp1} {wp2})")

    init_lines.append("  )")
    init_section = "\n".join(init_lines)

    # Build :goal section
    goal_lines = ["  (:goal", "    (and"]
    for i, sled in enumerate(sleds):
        sled_name = f"s{i}"
        goal_wp = f"w0_{sled[3]}"
        goal_lines.append(f"      (at {sled_name} {goal_wp})")
    goal_lines.append("    )")
    goal_lines.append("  )")
    goal_section = "\n".join(goal_lines)

    # Wrap everything in define block
    pddl_problem = f"(define (problem {problem_name})\n"
    pddl_problem += "  (:domain expedition)\n\n"
    pddl_problem += objects_section + "\n\n"
    pddl_problem += init_section + "\n\n"
    pddl_problem += goal_section + "\n)"

    return pddl_problem

def write_to_file_with_factor(num_instances):

    problem_id = 1

    for _ in range(num_instances):
        # Randomly choose number of waypoints (between 5 and 6, inclusive)
        number_of_waypoints = random.randint(5, 5)

        # Randomly pick capacities in a valid range
        min_capacity = number_of_waypoints + 1
        max_capacity = 2 * number_of_waypoints

        capacity_s0 = random.randint(min_capacity, max_capacity)
        capacity_s1 = random.randint(min_capacity, max_capacity)

        # Random supply values (each must be <= its sled's capacity)
        supply_s0 = random.randint(0, capacity_s0)
        supply_s1 = random.randint(0, capacity_s1)

        sleds = [
            (capacity_s0, supply_s0, 0, number_of_waypoints - 1),
        ]

        # Set supply at first waypoint
        waypoint_supplies = [0] * number_of_waypoints
        waypoint_supplies[0] = 1000
        num_of_factor = random.randint(2, 5)

        file_path = rf"C:\Felix\dataset\expeditionNew\instances\pfile{problem_id}.pddl"
        content = generate_pddl_problem_with_factor(sleds, waypoint_supplies, num_of_factor, f"instance_{problem_id}")

        with open(file_path, 'w') as f:
            f.write(content)

        problem_id += 1


write_to_file_with_factor(100)


