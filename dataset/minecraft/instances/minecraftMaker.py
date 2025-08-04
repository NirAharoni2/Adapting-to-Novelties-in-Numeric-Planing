def create_polycraft_problem(trees_in_map: int) -> str:
    return f"""; PolyCraft basic problem

(define (problem basic)

    (:domain PolyCraft)

    (:init
        ; Map
        (= (trees_in_map) {trees_in_map})

        ; Items
        (= (count_log_in_inventory) 0)
        (= (count_planks_in_inventory) 0)
        (= (count_stick_in_inventory) 0)
        (= (count_sack_polyisoprene_pellets_in_inventory) 0)
        (= (count_tree_tap_in_inventory) 0)
        (= (count_pogo_stick) 0)
    )

    (:goal
        (and
            (= (count_pogo_stick) 1)
        )
    )
)
"""

def create_polycraft_problem2(trees_in_map: int, mine_factor) -> str:
    return f"""; PolyCraft basic problem

(define (problem basic)

    (:domain PolyCraft)

    (:init
        ; Map
        (= (trees_in_map) {trees_in_map})
        (= (mine_factor) {mine_factor})

        ; Items
        (= (count_log_in_inventory) 0)
        (= (count_planks_in_inventory) 0)
        (= (count_stick_in_inventory) 0)
        (= (count_sack_polyisoprene_pellets_in_inventory) 0)
        (= (count_tree_tap_in_inventory) 0)
        (= (count_pogo_stick) 0)
    )

    (:goal
        (and
            (= (count_pogo_stick) 1)
        )
    )
)
"""
def write_to_file(num_instances):
    import random

    problem_id = 51

    for _ in range(num_instances):

        number_of_trees = random.randint(10, 20)
        mine_factor = round((random.random() * 5),2)

        file_path = rf"C:\newProject\ipc2023-dataset\minecraft\instances\pfile{problem_id}.pddl"
        content = create_polycraft_problem2(number_of_trees, mine_factor)

        with open(file_path, 'w') as f:
            f.write(content)

        problem_id += 1


write_to_file(50)
