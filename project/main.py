from project.problemGenerator import ProblemGenerator
from solution import Solution
import matplotlib.pyplot as plt

import shutil

src = r"C:\studies\github\PDDL2Gym\project\expedition_model\original_domain.pddl"
dst = r"C:\studies\github\PDDL2Gym\project\expedition_model\domain.pddl"

shutil.copyfile(src, dst)

pg = ProblemGenerator()
pg.clean_all()

solution = Solution("C:\studies\github\PDDL2Gym\project\expedition_model\domain.pddl", True)
solution.start()

pg = ProblemGenerator()
pg.clean_all()
score_history1 = shutil.copyfile(src, dst)

solution = Solution("C:\studies\github\PDDL2Gym\project\expedition_model\domain.pddl", False)
score_history2 = solution.start()


