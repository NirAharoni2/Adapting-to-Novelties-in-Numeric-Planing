import re
from typing import List, Dict

from Z_Orgonized.Utilities.config import Config
from nyx.PDDL import PDDL_Parser


class Parse_Model:
    def __init__(self):
        parser = PDDL_Parser(Config.domain_path, Config.problem_path)
        self.parsed_domain = parser.domain


    def rebuild_pddl_domain(self):
        domain = self.parsed_domain
        def format_predicates(preds):
            lines = []
            for name, args in preds.items():
                if args:
                    arg_str = ' '.join([f"{var} - {typ}" for var, typ in args.items()])
                    lines.append(f"({name} {arg_str})")
                else:
                    lines.append(f"({name})")
            return '\n        '.join(lines)

        def format_functions(funcs):
            lines = []
            for name, args in funcs.items():
                if args:
                    args_str = ' '.join([f"{k} - {v}" for k, v in args.items()])
                    lines.append(f"({name} {args_str})")
                else:
                    lines.append(f"({name})")
            return '\n        '.join(lines)

        def format_expression(exp):
            if isinstance(exp, list):
                return f"({exp[0]} {' '.join(format_expression(e) for e in exp[1:])})"
            return str(exp)

        def format_conditions(cond_list):
            if not cond_list:
                return "(and)"
            return f"(and\n            " + '\n            '.join(format_expression(c) for c in cond_list) + ")"

        def format_effects(effects):
            if not effects:
                return "(and)"
            return f"(and\n            " + '\n            '.join(format_expression(e) for e in effects) + ")"

        def format_action(act):
            param_str = ''
            if act.parameters:
                param_str = ' '.join([f"{p[0]} - {p[1]}" for p in act.parameters])
            precond_str = format_conditions(act.preconditions)
            effect_str = format_effects(act.effects)
            return f"""
    (:action {act.name}
     :parameters ({param_str})
     :precondition {precond_str}
     :effect {effect_str}
    )""".strip()

        domain_lines = []

        # Header
        domain_lines.append(f"(define (domain {domain.name})")
        domain_lines.append("    (:requirements :typing :fluents)")

        # Types
        typed_lines = ["\n    (:types"]
        for type_name, objects in domain.types.items():
            typed_lines.append(f"        {' '.join(objects)} - {type_name}")
        typed_lines.append("    )")
        domain_lines.append('\n'.join(typed_lines))
        # Predicates
        domain_lines.append("\n    (:predicates")
        domain_lines.append("        " + format_predicates(domain.predicates))
        domain_lines.append("    )")

        # Functions
        domain_lines.append("    (:functions")
        domain_lines.append("        " + format_functions(domain.functions))
        domain_lines.append("    )")

        # Actions
        for act in domain.actions:
            domain_lines.append("    " + format_action(act))

        # Events and Processes
        for evt in getattr(domain, 'events', []):
            domain_lines.append("    " + format_action(evt))
        for proc in getattr(domain, 'processes', []):
            domain_lines.append("    " + format_action(proc))

        domain_lines.append(")")

        return '\n'.join(domain_lines)


    def update_action_effect(self, action_name: str, key: str, new_value):
        theAct= None
        for act in self.parsed_domain.actions:
            if act.name == action_name:
                theAct = act
                break
        else:
            raise ValueError(f"Action '{action_name}' not found.")

        action = theAct
        index_of_effect = None
        for i, effect in enumerate(action.effects):
            if str(key) == str(effect[1]):
                index_of_effect = i
                break

        if index_of_effect is not None:
            action.effects[index_of_effect] = new_value
        else:
            # Add new effect if key not found
            action.effects.append(new_value)
        #for act in self.parsed_domain.actions:
            #print(f"name:{act.name} effects: {act.effects}")

        #for function in new_functions:
        #action.parameters.append(function)


    #get for example xl and return ?l
    def get_parameters_name(self, function_key):
        return list(self.parsed_domain.functions[function_key].keys())

    def get_parameters_type(self, function_key):
        return list(self.parsed_domain.functions[function_key].values())

    #get ?l and return if in the paramters of the function
    #this is brokennn
    def check_if_exist(self, action_name, parameter_name):
        theAct = None
        for act in self.parsed_domain.actions:
            if act.name == action_name:
                theAct = act
                break
        types = [param[1] for param in theAct.parameters]
        return all(elem in types for elem in parameter_name)


    def get_parameters_of_action(self, actionName):
        theAct = None
        for act in self.parsed_domain.actions:
            if act.name == actionName:
                theAct = act
                break
        names = [param[0] for param in theAct.parameters]
        return names

    def add_function(self, func_tuple, func_params, action_name):
        func_name = func_tuple
        if func_name not in self.parsed_domain.functions:
            theAct= None
            for act in self.parsed_domain.actions:
                if act.name == action_name:
                    theAct = act
                    break
            else:
                raise ValueError(f"Action '{action_name}' not found.")

            action = theAct
            parametersList = action.parameters

            self.parsed_domain.functions[func_name] = {k: v for k, v in func_params if k in parametersList}

