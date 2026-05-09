import csv
import sys
import shutil
import os
from pathlib import Path

from solution.Utilities.parsedModel import Parse_Model

from solution.Environment.Enviroment import Environment
from solution.Utilities.Score import plot_from_dict
from solution.Utilities.config import Config
from solution.baseAgent.Base_Agent import Agent
from solution.Utilities.compare_files import files_are_equal
from solution.Utilities.clean import remove_domain_2026_files
import time
ORACLE = -2
NO_REPAIR = -1
REPAIR_RELEVANT_VARIABLES = 1
REPAIR_ALL_VARIABLES = 2
REPAIR_ALL_MONOMIALS = 3
REPAIR_ADAPTIVE = 4
REPAIR_ADAPTIVE_UPDATED = 6
REPAIR_ADAPTIVE_UPDATED_new = 7
repair_names = {
    ORACLE: "ORACLE",
    NO_REPAIR: "NO_REPAIR",
    REPAIR_RELEVANT_VARIABLES: "REPAIR_RELEVANT_VARIABLES",
    REPAIR_ALL_VARIABLES: "REPAIR_ALL_VARIABLES",
    REPAIR_ALL_MONOMIALS: "REPAIR_ALL_MONOMIALS",
    REPAIR_ADAPTIVE: "REPAIR_ADAPTIVE",
    REPAIR_ADAPTIVE_UPDATED: "REPAIR_ADAPTIVE_UPDATED",
    REPAIR_ADAPTIVE_UPDATED_new: "REPAIR_ADAPTIVE_UPDATED_new",
}
# ============================================================
# GLOBAL VARIABLES
# ============================================================
domain_name = ""
novelty_id = -1
start = -1
end = -1
inject_novelty_at = -1

def clean():
    folder9 = r"C:/Felix/dataset/minecraft"
    folder1 = r"C:/Felix/dataset/minecraftnew"
    folder2 = r"C:/Felix/dataset/expedition"
    folder3 = r"C:/Felix/dataset/drone"
    folder4 = r"C:/Felix/dataset/sailing"
    folder5 = r"C:/Felix/dataset/counters"
    folder6 = r"C:/Felix/dataset/sailingNew"
    folder7 = r"C:/Felix/dataset/droneNew"
    folder8 = r"C:/Felix/dataset/expeditionNew"

    remove_domain_2026_files([folder9, folder1, folder2, folder3, folder4, folder5, folder6, folder7, folder8])

def set_instance_plan_paths(instance_number: int):
    """
    Sets the PDDL problem and plan file paths in the global config.
    """
    Config.update_instance_path(instance_number)
    Config.update_plan_path(instance_number)


def reset_only_domains():
    """
    Resets the domain PDDL file (used to temporarily undo repaired domains).
    """
    PROJECT_ROOT = Path(__file__).resolve().parents[1]

    # Build the domain path relative to the project root
    domain_path = PROJECT_ROOT / "dataset" / domain_name / "domain_world.pddl"
    Parse_Model().resetEffects(domain_path)




def reset():
    """
    Resets both the domain file and clears the plan folder for a fresh start.
    """

    # Assuming this is already defined
    PROJECT_ROOT = Path(__file__).resolve().parents[1]
    # Reset domain file

    domain_path = PROJECT_ROOT / "dataset" / domain_name / "domain_world.pddl"
    shutil.copyfile(domain_path, Config.get_domain())
    print(f"Reset: {Config.get_domain()} ← {domain_path}")
    # New relative path
    plans_folder = PROJECT_ROOT / "dataset" / domain_name / "instances" / "plans"
    if os.path.exists(plans_folder):
        for filename in os.listdir(plans_folder):
            file_path = os.path.join(plans_folder, filename)
            if os.path.isfile(file_path):
                os.remove(file_path)
                print(f"Deleted plan file: {file_path}")
    else:
        print(f"Plans folder not found: {plans_folder}")


def experiment_1(repair_methode_id):
    """
    Runs a sequence of problem instances with a specified repair strategy.

    Args:
        repair_methode_id (int): ID of the repair strategy (-2=base/oracle, -1=no repair, 1+=various repairs).
    Returns:
        int: The index at which a repaired model was successfully learned, or -1 if none.
        array: score list
    """
    if repair_methode_id == REPAIR_ADAPTIVE_UPDATED or repair_methode_id == REPAIR_ADAPTIVE_UPDATED_new:
        Config.checkSignature = True
    else:
        Config.checkSignature = False
    score_list = []
    otherResults = []
    learned_model_id = -1

    if repair_methode_id == -2:
        Config.update_domain_to_be_env_domain(domain_name, novelty_id)
    else:
        Config.update_domain(domain_name)
        reset()
    agent = Agent(repair_methode_id)
    env = Environment(domain_name, agent)
    env.returnToNoNovelty()
    env.score = 0
    score_list.append(env.score)

    print(f"Repair method: {repair_names[repair_methode_id]}")
    for index in range(start, end):
        set_instance_plan_paths(index)
        if index == inject_novelty_at:
            print(f"Injecting novelty at problem_id={index}")
            env.injectNovelty(novelty_id)
        print(f"Starting problem_id={index}")
        env.initialize_new_problem_env(index)
        start_plan_time = time.perf_counter()
        isCreated = agent.create_new_plan()
        end_plan_time = time.perf_counter()
        if not isCreated:
            print("Couldn't generate initial plan.")
            if repair_methode_id in [NO_REPAIR, ORACLE]:
                score_list.append(env.score)
                continue
            else:
                reset_only_domains()
                start_plan_time = time.perf_counter()
                isCreated = agent.create_new_plan()
                end_plan_time = time.perf_counter()
                if not isCreated:
                    print("Couldn't generate a plan to this problem with reset domain.")
                    score_list.append(env.score)
                    continue
        start_execute_time = time.perf_counter()
        if repair_methode_id in [NO_REPAIR, ORACLE]:
            succeeded = env.simulate_run_without_repair()
        else:
            succeeded = env.simulate_run()
        end_execute_time = time.perf_counter()

        runtimePlan = end_plan_time - start_plan_time
        runtimeExecute = end_execute_time - start_execute_time

        otherResults.append([runtimePlan, runtimeExecute, agent.get_plan_length()])
        score_list.append(env.score)
        print(f"problem_id={index}, succeeded: {succeeded}, total_score: {env.score}")

        if files_are_equal(env.environmentModel.get_model_path(), Config.get_domain()) and learned_model_id == -1 and repair_methode_id not in [NO_REPAIR, ORACLE]:
            learned_model_id = index - start + 1
            print("The novelty has been learnt!")

    return learned_model_id, score_list, list(zip(*otherResults))



def main(novelty_id_arg=None, domain_name_arg=None):
    """
    Runs all evaluations for a single domain and novelty, and saves the results.

    Args:
        novelty_id (int): The novelty scenario number.
        domain_name (str): The name of the domain to run.
    """
    global domain_name, novelty_id, start, end, inject_novelty_at
    domain_name = domain_name_arg
    novelty_id = novelty_id_arg
    if novelty_id >= 7 or (domain_name == "sailing" and novelty_id >= 4):
        start = 51
        end = 101
    else:
        start = 1
        end = 51
    inject_novelty_at = start

    # Run evaluations
    print(f"Running: domain={domain_name}, novelty_id={novelty_id}")
    modes = [
        ("oracle", ORACLE),
        #("base domain - no repair", NO_REPAIR),
        #("rel. variables repair", REPAIR_RELEVANT_VARIABLES),
        #("all variables repair", REPAIR_ALL_VARIABLES),
        #("all monomials repair", REPAIR_ALL_MONOMIALS),
        #("adaptive repair base", REPAIR_ADAPTIVE),
        ("adaptive repair + support for signature change", REPAIR_ADAPTIVE_UPDATED),

        ("adaptive repair + support for signature change++", REPAIR_ADAPTIVE_UPDATED_new),

    ]
    results = {name: experiment_1(mode) for name, mode in modes}

    legendToList = {
        name: (
            score,
            model
        )
        for name, (model, score, _) in results.items()
    }

    os.makedirs("results_csv", exist_ok=True)
    file_path = os.path.join("results_csv", f"{domain_name}_{novelty_id}_data.csv")

    with open(file_path, mode="w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["Label", "Score", "Learned Model ID", "planing time", "execute & repair time", "Plan Length"])
        for label, (model_id, score, extraResults) in results.items():
            writer.writerow([label, score, model_id, extraResults[0], extraResults[1], extraResults[2]])
    print(f"A CSV representing the results is saved in {file_path}")
    plot_from_dict(legendToList, f"{domain_name}_novelty_{novelty_id}", f"{domain_name}_novelty_{novelty_id}", novelty_intro_idx=0)


def run_novelties(domain_name, start=1, end=10):
    for i in range(start, end):
        Config.update_time() if start != 1 else None
        main(i, domain_name)

def main_entry():
    clean()
    if len(sys.argv) < 3:
        run_novelties("minecraftNew", start=5, end=7)
        return

    domain_name = sys.argv[1]
    command = sys.argv[2]
    if command == "all":
        run_novelties(domain_name)

    elif command == "from" and len(sys.argv) == 5:
        start_novelty = int(sys.argv[4])
        run_novelties(domain_name, start=start_novelty)

    else:
        novelty_id = int(command)
        main(novelty_id, domain_name)


if __name__ == "__main__":
    main_entry()