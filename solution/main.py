import csv
import sys
import shutil
import os

from solution.Environment.Enviroment import Environment
from solution.Utilities.Score import plot_from_dict
from solution.Utilities.config import Config
from solution.baseAgent.Base_Agent import Agent
from solution.Utilities.compare_files import files_are_equal


def set_instance_and_plan_paths(instance_number: int):
    """
    Sets the PDDL problem and plan file paths in the global config.
    """
    Config.update_instance_path(instance_number)
    Config.update_plan_path(instance_number)


def reset_only_domains(domain_name):
    """
    Resets the domain PDDL file (used to temporarily undo repaired domains).
    """
    domain_path = fr"C:\Felix\ipc2023-dataset\{domain_name}\domain_world.pddl"
    shutil.copyfile(domain_path, Config.get_domain())
    print(f"Reset: {Config.get_domain()} ← {domain_path}")


def reset(domain_name):
    """
    Resets both the domain file and clears the plan folder for a fresh start.
    """
    # Reset domain file
    reset_only_domains(domain_name)

    # Clear all old plan files
    plans_folder = fr"C:\Felix\ipc2023-dataset\{domain_name}\instances\plans"
    if os.path.exists(plans_folder):
        for filename in os.listdir(plans_folder):
            file_path = os.path.join(plans_folder, filename)
            if os.path.isfile(file_path):
                os.remove(file_path)
                print(f"Deleted plan file: {file_path}")
    else:
        print(f"Plans folder not found: {plans_folder}")


def run_problems(domain_name, start_id, end_id, repair_methode_id, score_list, novelty_id, inject_novelty_at=None):
    """
    Runs a sequence of problem instances with a specified repair strategy.

    Args:
        domain_name (str): The domain to run (e.g., 'drone').
        start_id (int): Start problem ID.
        end_id (int): End problem ID.
        repair_methode_id (int): ID of the repair strategy (-8=base/oracle, -1=no repair, 1+=various repairs).
        score_list (list): The list where success scores will be appended.
        novelty_id (int): Novelty scenario being tested.
        inject_novelty_at (int): Problem index to inject novelty.

    Returns:
        int: The index at which a repaired model was successfully learned, or -1 if none.
    """
    print(f"Repair method: {repair_methode_id}")
    learned_model_id = -1

    if repair_methode_id == -8:
        Config.update_domain_to_be_env_domain(domain_name, novelty_id)
    else:
        Config.update_domain(domain_name)
        reset(domain_name)

    agent = Agent(repair_methode_id)
    env = Environment(domain_name, agent)
    env.returnToNoNovelty()
    env.score = 0
    score_list.append(env.score)

    for i in range(start_id, end_id):
        set_instance_and_plan_paths(i)

        if inject_novelty_at is not None and i == inject_novelty_at:
            print(f"Injecting novelty at problem_id={i}")
            env.injectNovelty(novelty_id)

        print(f"Starting problem_id={i}")
        env.initialize_new_problem_env(i)

        if not agent.create_new_plan():
            print("Couldn't generate initial plan.")
            if repair_methode_id == -8 or novelty_id == -1:
                score_list.append(env.score)
                continue
            else:
                reset_only_domains(domain_name)
                if not agent.create_new_plan():
                    score_list.append(env.score)
                    continue

        if repair_methode_id == -1:
            succeeded = env.simulate_run_without_repair()
        else:
            succeeded = env.simulate_run()

        score_list.append(env.score)
        print(f"problem_id={i}, succeeded: {succeeded}, total_score: {env.score}")

        if files_are_equal(env.environmentModel.get_model_path(), Config.get_domain()) and learned_model_id == -1:
            learned_model_id = i - start_id + 1
            print("Fixed domain detected!")

    return learned_model_id


def main(novelty_id=None, domain_name=None):
    """
    Runs all evaluations for a single domain and novelty, and saves the results.

    Args:
        novelty_id (int): The novelty scenario number.
        domain_name (str): The name of the domain to run.
    """
    print(f"Running: domain={domain_name}, novelty_id={novelty_id}")

    start = 1
    end = 51
    if novelty_id >= 7 or (domain_name == "sailing" and novelty_id >= 4):
        start = 51
        end = 101

    inject_novelty_at = start

    # Score lists
    score_base = []
    score_without_repair = []
    score_with_repair1 = []
    score_with_repair2 = []
    score_with_repair3 = []
    score_with_repair4 = []

    # Run evaluations
    learned_model_base = run_problems(domain_name, start, end, -8, score_base, novelty_id, inject_novelty_at)
    learned_model_no_repair = run_problems(domain_name, start, end, -1, score_without_repair, novelty_id, inject_novelty_at)
    learned_model_r1 = run_problems(domain_name, start, end, 1, score_with_repair1, novelty_id, inject_novelty_at)
    learned_model_r2 = run_problems(domain_name, start, end, 2, score_with_repair2, novelty_id, inject_novelty_at)
    learned_model_r3 = run_problems(domain_name, start, end, 3, score_with_repair3, novelty_id, inject_novelty_at)
    learned_model_r4 = run_problems(domain_name, start, end, 4, score_with_repair4, novelty_id, inject_novelty_at)

    # Collect and save results
    legendToList = {
        "base": (score_base, -1),
        "no repair": (score_without_repair, -1),
        "repair1": (score_with_repair1, learned_model_r1),
        "repair2": (score_with_repair2, learned_model_r2),
        "repair3": (score_with_repair3, learned_model_r3),
        "repair4": (score_with_repair4, learned_model_r4),
    }

    os.makedirs("results_csv", exist_ok=True)
    file_path = os.path.join("results_csv", f"{domain_name}_{novelty_id}_data.csv")

    with open(file_path, mode="w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["Label", "Score", "Learned Model ID"])
        for label, (score, model_id) in legendToList.items():
            writer.writerow([label, score, model_id])

    plot_from_dict(legendToList, f"{domain_name}_novelty_{novelty_id}", f"{domain_name}_novelty_{novelty_id}", novelty_intro_idx=0)


if __name__ == '__main__':
    """
    Command-line entry point to run evaluation over a domain.
    Usage:
        python run.py <domain_name> <novelty_id>
        python run.py <domain_name> all
        python run.py <domain_name> from <start_id>
    """

    if len(sys.argv) == 3:
        domain_name = sys.argv[1]
        if sys.argv[2] == "all":
            for i in range(1, 10):  # novelty 1 to 9
                main(i, domain_name)
        else:
            novelty_id = int(sys.argv[2])
            main(novelty_id, domain_name)

    elif len(sys.argv) == 4 and sys.argv[2] == "from":
        domain_name = sys.argv[1]
        start_novelty = int(sys.argv[3])
        for i in range(start_novelty, 10):
            Config.update_time()
            main(i, domain_name)

    else:
        main(1, "minecraft")  # default
