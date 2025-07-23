from nyx.PDDL import PDDL_Parser

import sys, pprint
'''
# domain = sys.argv[1]
domain = r"C:\newProject\ipc2023-dataset\drone\domain.pddl"
# problem = sys.argv[2]
problem = r"C:\newProject\ipc2023-dataset/drone/instances/pfile1.pddl"
parser = PDDL_Parser(domain, problem)
print('----------------------------')
print('Domain name: ' + parser.domain.name)
pprint.pprint(parser.domain.predicates)
pprint.pprint(parser.domain.functions)
for act in parser.domain.actions:
    print(act)
for eve in parser.domain.events:
    print(eve)
for pro in parser.domain.processes:
    print(pro)

'''