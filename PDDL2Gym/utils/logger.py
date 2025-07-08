import os
import numpy as np
import pandas as pd
from typing import Tuple
from gymnasium import Wrapper
from gymnasium.wrappers import RecordEpisodeStatistics
from stable_baselines3.common.monitor import Monitor
from stable_baselines3.common.callbacks import BaseCallback
from collections import OrderedDict


class RecordTrajectories(BaseCallback):
    """
    Record trajectories for planning.

    :param verbose: Verbosity level: 0 for no output, 1 for info messages, 2 for debug messages
    """

    def __init__(self, verbose=0, output_dir="solutions"):
        super().__init__(verbose)
        self.episodes = 1
        self.output_dir = output_dir
        self.file = None
        self.env = None

        # iteration index
        self.it_index = OrderedDict()
        self.it_index[0] = -1

    def update_output_dir(self, output_dir):
        self.episodes = 1
        self.output_dir = output_dir
        self.file = None
        self.env = None

    def get_env(self):
        """Get the current environment"""
        if self.env is None:
            if "env" in self.locals:
                env = self.locals["env"].envs[0]
            else:
                env = self.locals["self"].env.envs[0]
            while issubclass(type(env), Wrapper):
                env = env.env
            self.env = env
        return self.env

    def _on_step(self) -> bool:
        """
        This method will be called by the model after each call to `env.step()`.

        :return: (bool) If the callback returns False, training is aborted early.
        """
        env = self.get_env()

        action = self.locals["actions"][0]

        self.file.write(f"(operator: {env.get_action(action).typed_action_call})\n")

        if env.truncated:
            self.file.write(env.last_state.serialize())
            self.file.write(f")\n")
            self.file.close()
            self.episodes += 1
            self.start_record(env)
        else:
            self.file.write(env.get_state().serialize())

        return True

    def start_record(self, env):
        self.file = open(f"{self.output_dir}/pfile{self.episodes}.trajectory", "w")
        self.file.write(f"({env.get_state().serialize()}")

    def _on_training_start(self) -> None:
        env = self.get_env()
        self.start_record(env)

    def _on_training_end(self) -> None:
        self.file.write(f")\n")
        self.file.close()
        file_path = f"{self.output_dir}/pfile{self.episodes}.trajectory"
        with open(file_path, "r") as file:
            lines = file.readlines()
            if len(lines) == 2:
                os.remove(file_path)
            else:
                self.episodes += 1

        env = self.locals["env"].envs[0]

        if type(env) == Monitor:
            env = env.env

        if type(env) == RecordEpisodeStatistics:
            score = np.array(env.return_queue)
            length = np.array(env.length_queue)

            it_index = []
            for key, value in self.it_index.items():
                if value == -1:
                    new_length = len(score) - len(it_index)
                    it_index += [key] * new_length
                    self.it_index[key] = new_length
                    self.it_index[key + 1] = -1
                else:
                    it_index += [key] * value
            it_index = np.array(it_index)

            results = np.array([score, length, it_index]).transpose()
            df = pd.DataFrame(results, columns=["reward", "length", "iteration"])
            df.to_csv(f"{self.output_dir}/summary_{self.episodes}.csv")


def create_logdir(postfix, indexing=False) -> Tuple[str, str]:
    logdir = f"logs/{postfix}"
    models_dir = f"models/{postfix}"

    if indexing:
        dir_index = 1
        while os.path.exists(f"{logdir}/{dir_index}") and len(
            os.listdir(f"{logdir}/{dir_index}")
        ):
            dir_index += 1
        logdir = f"{logdir}/{dir_index}"
        models_dir = f"{models_dir}/{dir_index}"

    if not os.path.exists(logdir):
        os.makedirs(logdir)

    if not os.path.exists(models_dir):
        os.makedirs(models_dir)

    return logdir, models_dir
