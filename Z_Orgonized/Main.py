from Z_Orgonized.Environment.Enviroment import Environment
from Z_Orgonized.Utilities.Score import plot_two_lists
from Z_Orgonized.Utilities.config import Config
from Z_Orgonized.baseAgent.Base_Agent import Agent
import shutil
import os

def set_instance_and_plan_paths(instance_number: int):
    Config.update_instance_path(instance_number)
    Config.update_plan_path(instance_number)


def reset_only_domains():
    # Restore domain files
    domain_paths = [
        {
            "src": r"C:\newProject\ipc2023-dataset\expedition\domain_world.pddl",
            "dst": r"C:\newProject\ipc2023-dataset\expedition\domain.pddl"
        },
        {
            "src": r"C:\newProject\ipc2023-dataset\drone\domain_world.pddl",
            "dst": r"C:\newProject\ipc2023-dataset\drone\domain.pddl"
        }
    ]

    for domain in domain_paths:
        shutil.copyfile(domain["src"], domain["dst"])
        print(f"Reset: {domain['dst']} ← {domain['src']}")

def reset(domain_name):
    # Restore domain files
    domain_paths = [
        {
            "src": r"C:\newProject\ipc2023-dataset\expedition\domain_world.pddl",
            "dst": r"C:\newProject\ipc2023-dataset\expedition\domain.pddl"
        },
        {
            "src": r"C:\newProject\ipc2023-dataset\drone\domain_world.pddl",
            "dst": r"C:\newProject\ipc2023-dataset\drone\domain.pddl"
        }
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





def run_problems(env, agent, start_id, end_id, with_repair, score_list, inject_novelty_at=None):
    env.returnToNoNovelty()
    env.score = 0
    score_list.append(env.score)
    for i in range(start_id, end_id):
        set_instance_and_plan_paths(i)
        if inject_novelty_at is not None and i == inject_novelty_at:
            print(f"Injecting novelty at problem_id={i}")
            env.injectNovelty()

        print(f"Starting problem_id={i}")
        env.initialize_new_problem_env(i)

        #if it can't find solution use the unrepaired domain and plan again
        if not agent.create_new_plan():
            print("couldnt find")
            reset_only_domains()
            if not agent.create_new_plan():
                score_list.append(env.score)
                print(f"problem_id={i}, succeeded: {'False'}, total_score: {env.score}")
                continue

        if with_repair:
            succeeded = env.simulate_run()
        else:
            succeeded = env.simulate_run_without_repair()

        score_list.append(env.score)
        print(f"problem_id={i}, succeeded: {succeeded}, total_score: {env.score}")

def main():
    domain_name = "expedition"
    # domain_name = "expedition"
    Config.update_domain(domain_name)


    reset(domain_name)

    agent = Agent()
    environment = Environment(domain_name, agent)
    score_with = []
    score_without = []

    run_problems(environment, agent, 1, 30, with_repair=False, score_list=score_without, inject_novelty_at=1)

    # Run problems without repair, inject novelty at problem_id=2
    run_problems(environment, agent, 1, 30, with_repair=True, score_list=score_with, inject_novelty_at=1)


    plot_two_lists(score_with, score_without)
if __name__ == '__main__':
    main()

