from Z_Orgonized.Environment.Enviroment import Environment
from Z_Orgonized.Utilities.Score import plot_two_lists
from Z_Orgonized.baseAgent.Base_Agent import Agent
import shutil
import os

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
        if inject_novelty_at is not None and i == inject_novelty_at:
            print(f"Injecting novelty at problem_id={i}")
            env.injectNovelty()

        print(f"Starting problem_id={i}")
        env.initialize_new_problem_env(i)
        agent.create_new_plan(i)

        if with_repair:
            succeeded = env.simulate_run()
        else:
            succeeded = env.simulate_run_without_repair()

        score_list.append(env.score)
        print(f"problem_id={i}, succeeded: {succeeded}, total_score: {env.score}")

def main():
    domain_name = "drone"
    # domain_name = "expedition"
    reset(domain_name)

    agent = Agent(domain_name)
    environment = Environment(domain_name, agent)
    score_with = []

    # Run problems without repair, inject novelty at problem_id=2
    run_problems(environment, agent, 1, 10, with_repair=True, score_list=score_with, inject_novelty_at=2)



if __name__ == '__main__':
    main()

