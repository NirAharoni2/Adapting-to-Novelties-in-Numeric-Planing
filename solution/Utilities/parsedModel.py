import re
from typing import List, Dict

from solution.Utilities.config import Config
from nyx.PDDL import PDDL_Parser


class Parse_Model:
    def __init__(self):
        parser = PDDL_Parser(Config.domain_path, Config.problem_path)
        self.parsed_domain = parser.domain

    def commit(self):

        with open(Config.domain_path, 'w') as f:
            f.write(self.rebuild_pddl_domain())

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

    #example: function: x ?b - boat
    #self.parsed_domain.functions is a list of dicts form key: x to {'?b' : the type of ?b for example 'boat'}
    #input: function key for example x
    #returns all the parameters x gets => [?b]
    def get_parameters_name(self, function_key):
        return list(self.parsed_domain.functions[function_key].keys())

    # example: function: x ?b - boat
    # self.parsed_domain.functions is a list of dicts form key: x to {'?b' : the type of ?b for example 'boat'}
    #input: function key for example x
    #returns all the types x gets => ['boat']
    def get_parameters_type(self, function_key):
        return list(self.parsed_domain.functions[function_key].values())



    def get_parameters(self, function_key):
        return list(self.parsed_domain.functions[function_key].items())

    def get_function(self, function_key):
        return function_key, *self.parsed_domain.functions[function_key].keys()

    #get ?l and return if in the paramters of the function
    #this is brokennn
    def check_if_exist(self, action_name, parameter_name):
        theAct = None
        theAct = self.getActionByName(action_name)
        types = [param[1] for param in theAct.parameters]
        return all(elem in types for elem in parameter_name)


    # input: action name (for example 'go_north_east')
    # return: all the parameters names of the function (for example ['?b'])
    def get_parameters_of_action(self, actionName):
        theAct = self.getActionByName(actionName)
        names = [param[0] for param in theAct.parameters]
        return names

    def get_types_in_action(self, actionName):
        theAct = self.getActionByName(actionName)
        names = [param[1] for param in theAct.parameters]
        return names

    # input: action name (for example 'go_north_east') and parameter (for example ['?p','person']
    # void: add the parameter to the action's paramters
    # in case '?p' exists it replaces ?p with ?p1 and adds ['?p2','person'])
    def addParameterToAction(self, actionName, parameter):
        parameter = list(parameter)
        theAct = self.getActionByName(actionName)
        for param in theAct.parameters:
            alreadyExistName = param[0] # for example '?p'
            theNewParamName = parameter[0]
            if alreadyExistName == theNewParamName:
                demoParam = self.addNumber1(param[0])
                parameter[0] = self.incrementNumber(parameter[0], demoParam)
        theAct.parameters.append(parameter)
        return parameter

    def getActionByName(self, actionName):
        theAct = None
        for act in self.parsed_domain.actions:
            if act.name == actionName:
                theAct = act
                break
        return theAct

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

    import re

    def get_trailing_number(self, s: str):
        match = re.search(r'(\d+)$', s)
        return int(match.group(1)) if match else None

    #transform '?p' => '?p1'
    #if already have number dosen't do anything ('?p1' => '?p1')
    def addNumber1(self, s: str):
        if self.get_trailing_number(s) is None:
            return s + str(1)

    #input: the newParam (ex: '?p'), the alreadyExistingParam (ex: '?p1')
    #(transform '?p1' => '?p2')
    #return '?p2'
    def incrementNumber(self, theNewParam, theCollidingParam):
        oldNumber = self.get_trailing_number(theCollidingParam)
        if oldNumber is not None:
            return theNewParam + str(oldNumber + 1)


    def possibleNewParameters(self):
        return self.parsed_domain.types


    def resetEffects(self, originalDomain):
        parser = PDDL_Parser(originalDomain, Config.problem_path)
        original_parsed_domain = parser.domain
        for action in original_parsed_domain.actions:
            currentAction = self.getActionByName(action.name)
            currentAction.effects = action.effects
        self.commit()

    #gets parameter = ["?a", "axe"]
    def removeParameterFromAction(self, actionName, parameter):
        parameter = list(parameter)
        theAct = self.getActionByName(actionName)
        for param in theAct.parameters:
            alreadyExistName = param[0] # for example '?p'
            theNewParamName = parameter[0]
            if alreadyExistName == theNewParamName:
                theAct.parameters.remove(parameter)
        return parameter