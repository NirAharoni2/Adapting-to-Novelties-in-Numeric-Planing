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
            if repair_methode_id != -8:
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
            learned_model_id = i

    return learned_model_id


def main():
    if len(sys.argv) != 3:
        domain_name = "drone"
        novelty_id = 4
    else:
        domain_name = sys.argv[1]
        novelty_id = int(sys.argv[2])



    score_with_repair1 = []
    score_with_repair3 = []
    score_with_repair4 = []

    score_base = []
    score_without_repair = []
    #for novelty_id in range(1, 4):
    start = 1
    end = 41
    inject_novelty_at = start

    learned_model_id_with_repair4 = run_problems(domain_name, start, end,repair_methode_id=4 ,score_list=score_with_repair4, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)

    learned_model_id_without_repair = run_problems(domain_name, start, end,repair_methode_id=-1, score_list=score_without_repair, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)
    # Run problems without repair, inject novelty at problem_id=2
    learned_model_id_with_repair1 = run_problems(domain_name, start, end,repair_methode_id=1 ,score_list=score_with_repair1, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)

    learned_model_id_with_repair3 = run_problems(domain_name, start,end,repair_methode_id=3 ,score_list=score_with_repair3, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)
    learned_model_base = run_problems(domain_name, start,end,repair_methode_id=-8 ,score_list=score_base, novelty_id=novelty_id, inject_novelty_at=inject_novelty_at)

    legendToList = {}
    legendToList["repair3"]=(score_with_repair4, learned_model_id_with_repair4)

    legendToList["base"]=(score_base, -1)
    legendToList["no repair"]=(score_without_repair, learned_model_id_without_repair)
    legendToList["repair1"]=(score_with_repair1, learned_model_id_with_repair1)
    legendToList["repair2"]=(score_with_repair3, learned_model_id_with_repair3)
    plot_from_dict(legendToList,f"{domain_name}_novelty_{novelty_id}",f"{domain_name}_novelty_{novelty_id}",novelty_intro_idx=0)
    #os.remove(Config.get_domain())
if __name__ == '__main__':
    main()

