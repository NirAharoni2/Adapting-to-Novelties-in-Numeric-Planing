def parse_observation(vector):
    # Try to infer N (number of waypoints)
    L = len(vector)
    for N in range(1, 100):  # safe range
        if 4 + 3 * N + N * (N-1) == L:  # full vector
            break
        elif 4 + 3 * N <= L:  # allow partials (for minimal)
            continue
    else:
        raise ValueError("Could not determine number of waypoints.")

    i = 0
    parsed = {}
    parsed['capacity_s0'] = vector[i]; i += 1
    parsed['current_s0'] = vector[i]; i += 1

    parsed['supply_at_waypoints'] = vector[i:i+N]
    i += N

    parsed['capacity_s1'] = vector[i]; i += 1
    parsed['current_s1'] = vector[i]; i += 1

    parsed['s0_position'] = vector[i:i+N]; i += N
    parsed['s1_position'] = vector[i:i+N]

    return parsed

