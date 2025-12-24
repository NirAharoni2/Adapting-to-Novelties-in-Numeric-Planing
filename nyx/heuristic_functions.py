import nyx.syntax.constants as constants

def heuristic_function(state):
    if constants.CUSTOM_HEURISTIC_ID == 1:
        state = state.state_vars

        sleds = set()
        waypoints = set()

        for key in state:
            if key.startswith("['at'"):
                parts = eval(key)
                sleds.add(parts[1])
                waypoints.add(parts[2])

        waypoints = sorted(list(waypoints), key=lambda wp: int(wp.split('_')[-1]))
        goal_wp = waypoints[-1]
        total_cost = 0

        for sled in sleds:
            # Find current location
            current_wp = next(wp for wp in waypoints if state.get(str(['at', sled, wp]), False))
            current_idx = waypoints.index(current_wp)
            goal_idx = waypoints.index(goal_wp)
            steps_to_goal = goal_idx - current_idx

            current_supplies = state.get(str(['sled_supplies', sled]), 0.0)

            if current_supplies >= steps_to_goal:
                continue  # This sled is fine

            supply_deficit = steps_to_goal - current_supplies

            # Try to find reachable supply caches on the path ahead
            found_supply = False
            supply_cost = float('inf')

            for i in range(current_idx, goal_idx):
                wp = waypoints[i]
                cache_supplies = state.get(str(['waypoint_supplies', wp]), 0.0)

                if cache_supplies >= 1:
                    # To get k supplies from here, sled must:
                    # - walk to wp (i - current_idx) steps
                    # - pick up supplies (1 action = 1 cost per unit)
                    # - continue to goal (goal_idx - i steps)
                    steps_to_cache = i - current_idx
                    steps_from_cache_to_goal = goal_idx - i

                    # Assume 1 supply per retrieve, 1 per move
                    total_moves = steps_to_cache + supply_deficit + steps_from_cache_to_goal
                    supply_cost = min(supply_cost, total_moves)
                    found_supply = True

            if found_supply:
                total_cost += supply_cost
            else:
                # Penalize heavily if sled can't access supplies at all
                total_cost += 1000  # or float('inf') if you want strict unsolvability
        print(total_cost)
        return total_cost

    if constants.CUSTOM_HEURISTIC_ID == 2:
        state = state.state_vars

        boats = []
        people = []
        boat_coords = {}
        person_d = {}
        saved = {}

        # Parse the state

        for key, value in constants.state_constants.items():
            var = eval(key)  # Convert string key back to tuple
            if var[0] == "d":
                person_d[var[1]] = value
                if var[1] not in people:
                    people.append(var[1])

        for key, value in state.items():
            var = eval(key)  # Convert string key back to tuple
            if var[0] == "x":
                boat_coords.setdefault(var[1], {})["x"] = value
                if var[1] not in boats:
                    boats.append(var[1])
            elif var[0] == "y":
                boat_coords.setdefault(var[1], {})["y"] = value
                if var[1] not in boats:
                    boats.append(var[1])
            elif var[0] == "d":
                person_d[var[1]] = value
                if var[1] not in people:
                    people.append(var[1])
            elif var[0] == "saved":
                saved[var[1]] = value
                if var[1] not in people:
                    people.append(var[1])

        def distance_to_save_region(x, y, d):
            xy = x + y
            yx = y - x

            dx = max(0, d - xy, xy - (d + 25))
            dy = max(0, d - yx, yx - (d + 25))

            # Approximate step cost by dividing distance by max boat move per action
            max_step = 3  # max per axis (e.g. go_est changes x by 3)
            return int((dx + dy + max_step - 1) // max_step)

        total_cost = 0

        for p in people:
            if saved.get(p, False):
                continue
            d = person_d[p]
            best_cost = float("inf")
            for b in boats:
                x = boat_coords[b]["x"]
                y = boat_coords[b]["y"]
                cost = distance_to_save_region(x, y, d)
                if cost < best_cost:
                    best_cost = cost
            total_cost += best_cost

        return total_cost

    if constants.CUSTOM_HEURISTIC_ID == 3:
        state = state.state_vars
        import re

        def parse_loc_name(loc_name):
            match = re.match(r"x(\d+)y(\d+)z(\d+)", loc_name)
            return tuple(map(int, match.groups())) if match else (0, 0, 0)

        def manhattan(p1, p2):
            return abs(p1[0] - p2[0]) + abs(p1[1] - p2[1]) + abs(p1[2] - p2[2])

        x = int(state["['x']"])
        y = int(state["['y']"])
        z = int(state["['z']"])
        battery = state["['battery-level']"]

        current_pos = (x, y, z)
        recharge_pos = (0, 0, 0)

        unvisited = []
        for key, val in state.items():
            if key.startswith("['visited'") and val is False:
                loc_str = key.split(",")[1].strip(" ']")
                unvisited.append(parse_loc_name(loc_str))

        if not unvisited:
            # Goal is just to return home
            return manhattan(current_pos, recharge_pos)

        # Heuristic components
        nearest_loc = min(unvisited, key=lambda l: manhattan(current_pos, l))
        dist_to_nearest = manhattan(current_pos, nearest_loc)
        avg_dist = sum(manhattan(current_pos, loc) for loc in unvisited) / len(unvisited)

        # Encourage progress: fewer unvisited → smaller value
        unvisited_penalty = len(unvisited) * 3  # tunable weight
        recharge_penalty = manhattan(current_pos, recharge_pos) if battery < 3 else 0
        battery_bonus = -0.5 * battery  # more battery = lower heuristic

        heuristic_value = (
                dist_to_nearest +
                avg_dist * 0.5 +  # weight average a bit
                unvisited_penalty +
                recharge_penalty +
                battery_bonus
        )

        return heuristic_value
