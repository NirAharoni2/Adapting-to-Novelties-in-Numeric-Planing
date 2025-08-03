import csv
import sys

from Z_Orgonized.Environment.Enviroment import Environment
from Z_Orgonized.Utilities.Score import plot_from_dict
from Z_Orgonized.Utilities.config import Config
from Z_Orgonized.baseAgent.Base_Agent import Agent
import shutil
import os
from Z_Orgonized.Utilities.compare_files import files_are_equal
def set_instance_and_plan_paths(instance_number: int):
    Config.update_instance_path(instance_number)
    Config.update_plan_path(instance_number)


def reset_only_domains(domain_name):
    # Restore domain files
    domain_paths = [
        {
            "src": fr"C:\newProject\ipc2023-dataset\{domain_name}\domain_world.pddl",
            "dst": Config.get_domain()
        }
    ]

    for domain in domain_paths:
        shutil.copyfile(domain["src"], domain["dst"])
        print(f"Reset: {domain['dst']} ← {domain['src']}")

def reset(domain_name):
    # Restore domain files
    domain_paths = [
        {
            "src": fr"C:\newProject\ipc2023-dataset\{domain_name}\domain_world.pddl",
            "dst": Config.get_domain()
        },

    ]

    for domain in domain_paths:
        shutil.copyfile(domain["src"], domain["dst"])
        print(f"Reset: {domain['dst']} ← {domain['src']}")

    # Clean plans folder
    plans_folder = fr"C:\newProject\ipc2023-dataset\{domain_name}\instances\plans"
    if os.path.exists(plans_folder):
        for filename in os.listdir(plans_folder):
            file_path = os.path.join(plans_folder, filename)
            if os.path.isfile(file_path):
                os.remove(file_path)
                print(f"Deleted plan file: {file_path}")
    else:
        print(f"Plans folder not found: {plans_folder}")





def run_problems(domain_name, start_id, end_id, repair_methode_id, score_list, novelty_id, inject_novelty_at=None):
    #setup
    print(f"repair methode: {repair_methode_id}")
    learned_model_id = -1
    if repair_methode_id ==-8:
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

        #if it can't find solution use the unrepaired domain and plan again
        if not agent.create_new_plan():
            print("couldn't find")
            if repair_methode_id == -8 or novelty_id == -1:
                score_list.append(env.score)
                print(f"problem_id={i}, succeeded: {'False'}, total_score: {env.score}")
                continue
            else:
                reset_only_domains(domain_name)
                if not agent.create_new_plan():
                    score_list.append(env.score)
                    print(f"problem_id={i}, succeeded: {'False'}, total_score: {env.score}")
                    continue

        if repair_methode_id == -1:
            succeeded = env.simulate_run_without_repair()
        else:
            succeeded = env.simulate_run()

        score_list.append(env.score)
        print(f"problem_id={i}, succeeded: {succeeded}, total_score: {env.score}")
        if files_are_equal(env.environmentModel.get_model_path(), Config.get_domain()) and learned_model_id == -1:
            print(f"fixed domain")
            learned_model_id = i - start_id + 1

    return learned_model_id


def main(novelty_id = None, domain_name = None):

    print(f"domain_name: {domain_name}, novelty_id: {novelty_id}")

    start = 1
    end = 51
    if novelty_id >= 7:
        start = 51
        end = 101
    if domain_name == "sailing" and novelty_id >= 4:
        start = 51
        end = 101

    inject_novelty_at = start

    score_with_repair1 = []
    score_with_repair3 = []
    score_with_repair4 = []
    score_with_repair5 = []

    score_base = []
    score_without_repair = []
    score_with_repair6 = []
    score_with_repair7 = []
    #for novelty_id in range(1, 4):

    learned_model_base = run_problems(domain_name, start,end,repair_methode_id=-8 ,score_list=score_base, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)
    learned_model_id_without_repair = run_problems(domain_name, start, end,repair_methode_id=-1, score_list=score_without_repair, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)
    learned_model_id_with_repair1 = run_problems(domain_name, start, end,repair_methode_id=1 ,score_list=score_with_repair1, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)
    learned_model_id_with_repair2 = run_problems(domain_name, start,end,repair_methode_id=3 ,score_list=score_with_repair3, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)
    learned_model_id_with_repair3 = run_problems(domain_name, start,end,repair_methode_id=7 ,score_list=score_with_repair7, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)
    learned_model_id_with_repair4 = run_problems(domain_name, start, end,repair_methode_id=6 ,score_list=score_with_repair6, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)

    #learned_model_id_with_repair9 = run_problems(domain_name, start, end,repair_methode_id=4 ,score_list=score_with_repair4, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)

    #learned_model_id_with_repair8= run_problems(domain_name, start, end,repair_methode_id=5 ,score_list=score_with_repair5, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)




    legendToList = {}


    legendToList["base"]=(score_base, -1)
    legendToList["no repair"]=(score_without_repair, -1)
    legendToList["repair1"]=(score_with_repair1, learned_model_id_with_repair1)
    legendToList["repair2"]=(score_with_repair3, learned_model_id_with_repair2)
    legendToList["repair3"]=(score_with_repair7, learned_model_id_with_repair3)
    legendToList["repair4"]=(score_with_repair6, learned_model_id_with_repair4)
    #legendToList["repair5"]=(score_with_repair6, learned_model_id_with_repair6)

    os.makedirs("results_data", exist_ok=True)

    # File path
    file_path = os.path.join("results_data", f"{domain_name}_{novelty_id}_data.csv")

    # Write to CSV
    with open(file_path, mode="w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["Label", "Score", "Learned Model ID"])  # Header
        for label, (score, model_id) in legendToList.items():
            writer.writerow([label, score, model_id])

    plot_from_dict(legendToList,f"{domain_name}_novelty_{novelty_id}",f"{domain_name}_novelty_{novelty_id}",novelty_intro_idx=0)
    #os.remove(Config.get_domain())
if __name__ == '__main__':

    if len(sys.argv) == 3:
        if sys.argv[2] == "all":
            domain_name = sys.argv[1]
            for i in range(0, 9):
                main(i + 1, domain_name)
        else:
            domain_name = sys.argv[1]
            novelty_id = int(sys.argv[2])
            main(novelty_id, domain_name)
    elif len(sys.argv) == 4 and sys.argv[2] == "from":
        domain_name = sys.argv[1]
        for i in range(int(sys.argv[3]),10):
            Config.update_time()
            main(i, domain_name)

    else:
        main(1,"minecraft")

