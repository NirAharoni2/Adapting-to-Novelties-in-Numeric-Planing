import os
from pddl2gym import PDDL2GYM
from stable_baselines3 import PPO
from agents import FixedScriptAgent
from planning import MetricFF, NYX  # NYX
from utils import Logger
SEED = 63


def main():
    play_mode = ["rl_learn", "planning_play"][1]

    myPlan = "C:\\newProject\PDDL2Gym\ex\expedition\plans\plan1_pb01.pddl"
    real_domain = "C:\\newProject\ipc2023-dataset\expedition\domain.pddl"
    problem = "C:\\newProject\ipc2023-dataset\expedition\instances\pfile1.pddl"
    # Set up the environment
    env = PDDL2GYM(
        real_domain,
        problem,
        max_steps=1000,
    )

    steps_per_episode = 1000
    min_episodes = 100

    if play_mode == "rl_learn":
        model = PPO(
            "MlpPolicy",
            env,
            verbose=1,
            n_steps=steps_per_episode,
            batch_size=steps_per_episode,
            stats_window_size=1,
            ent_coef=0.01,
            gamma=0.999,
            vf_coef=0.65,
            max_grad_norm=1.0,
            seed=SEED,
        )

        rec_dir = f"environments/{problem.split('/')[-1].split('.')[0]}/"
        if not os.path.exists(rec_dir):
            os.makedirs(rec_dir)

        callback = Logger.RecordTrajectories(output_dir=rec_dir)
        model.learn(
            total_timesteps=steps_per_episode * min_episodes,
            callback=callback,
            reset_num_timesteps=False,
            progress_bar=True,
        )

        model.save("ppo_weight")
        del model
        model = PPO.load("ppo_weight")
    else:
        planner = NYX()
        plan = planner.create_plan(
            domain=real_domain,
            problem=problem,
        )
        planner.create_simulation(
            domain=real_domain,
            problem=problem,
            plan=myPlan,

        )
        if len(plan) == 0:
            print("can't start explorer, no plan found")
            return
        model = FixedScriptAgent(
            env,
            script=plan,
        )

    observation, _ = env.reset()
    #env.render()
    terminated, truncated = False, False
    total_reward = 0
    store = []
    while not (terminated or truncated):
        if "rl" in play_mode:
            action, _ = model.predict(observation, deterministic=False)
            new_observation, reward, terminated, truncated, _ = env.step(action)
        else:
            action = model.choose_action(observation)
            new_observation, reward, terminated, truncated, _ = env.planning_step(action)
        total_reward += reward
        print(str(observation[0:22]) + str(action) + str(new_observation[0:22]))
        #env.render()
        observation = new_observation
    print("Total reward:", total_reward)
    print("Steps:", env.current_step)


if __name__ == "__main__":
    main()
