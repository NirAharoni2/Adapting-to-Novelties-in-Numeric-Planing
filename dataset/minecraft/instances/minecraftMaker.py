import random
from pathlib import Path

from solution.Utilities.config import Config


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
def write_to_file(num_instances, seed_id):
    import random
    problem_id = 51
    random.seed(seed_id)
    directory = Path(Config.get_database_dir() / "minecraft" / "instances" / f"seed_{seed_id}")
    directory.mkdir(parents=True, exist_ok=True)
    # problem_id = 4 #
    # seed_to_instance = {
    #     2: [1,11,17,5],
    #     3: [5,13,16,31,49,44],
    #     4: [6,44],
    #     5: [37],
    # }
    # for seed_id, problems in seed_to_instance.items():
    for _ in range(num_instances):

        directory = Path(Config.get_database_dir() / "minecraft" / "instances" / f"seed_{seed_id}")
        directory.mkdir(parents=True, exist_ok=True)
        number_of_trees = random.randint(10, 20)
        mine_factor = round((random.random() * 5),2)

        file_path = rf"{directory}\pfile{problem_id}.pddl"


        #content = create_polycraft_problem(number_of_trees)
        content = create_polycraft_problem2(number_of_trees, mine_factor)

        with open(file_path, 'w') as f:
            f.write(content)

        problem_id += 1

# for curr_seed_id in range(1,6):
#     write_to_file(50, curr_seed_id)



def write_to_file_in_main(seed_id, problem_id):
    random.seed(seed_id+3)
    directory = Path(Config.get_database_dir() / "minecraft" / "instances" / f"seed_{seed_id}")
    directory.mkdir(parents=True, exist_ok=True)
    number_of_trees = random.randint(10, 20)
    mine_factor = round((random.random() * 5), 2)

    file_path = rf"{directory}\pfile{problem_id}.pddl"
    if problem_id <= 50:
        content = create_polycraft_problem(number_of_trees)
    else:
        content = create_polycraft_problem2(number_of_trees, mine_factor)
    print(file_path)

    with open(file_path, 'w') as f:
        f.write(content)

