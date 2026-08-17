from collections import defaultdict, Counter
from typing import Any

from pyparsing import results
from sklearn.metrics import r2_score
from sklearn.linear_model import LinearRegression
import numpy as np

from PDDL2Gym import repair
from solution.Utilities.config import Config
from solution.Utilities.parsedModel import Parse_Model
from utils.features import *
from models.linear import *
from models.linear_adaptive import *
from models.milp_optimizer import *

class Action:
    def __init__(self, fullAction):
        self.name = fullAction[0]
        self.groundedParameters = fullAction[1:]

class StateTransition:
    def __init__(self, LastObservation, newObservation, action):
        pass


class Repair:
    """
    Handles domain repair by learning new models for action effects using regression.

    Attributes:
        data (defaultdict): Stores observed transitions for each action.
        parsed_model (Parse_Model): The parsed domain model.
    """

    def __init__(self):
        self.currentTry = defaultdict()
        self.fullData = defaultdict(list)
        self.data = defaultdict(list)
        self.addedParametersChanged = defaultdict(list)
        self.addedParametersMakeChange = defaultdict(list)
        self.parsed_model : Parse_Model = None
        self.numOfPredicates = 0
        self.blockNewData = False
        self.tick = 0
        self.retry_delay = 10
        self.needNewParameter = False



    def mainRepair(self, repairId, LastObservation, fullAction, newObservation, different_keys):
        action = Action(fullAction)
        if Config.checkSignature:
            self.addMissingParamsToAction(different_keys, action)
        # Optionally reuse previously detected keys
        differentKeysLifted = self.getDifferentKeys(action, different_keys)

        LastObservationFluents = LastObservation["fluents"]
        newObservationFluents = newObservation["fluents"]
        repairMethod = lambda: ()
        # Select the repair strategy based on the repair_id
        # rel variables
        if repairId == 1:
            repairMethod = self.repair_action_rel_vars
        # all variabels
        elif repairId == 2:
            repairMethod = self.repair_action_all_vars
        # all monomials
        elif repairId == 3:
            repairMethod = self.repair_action_all_monomials
        # adaptive
        elif repairId == 4:
            repairMethod = self.repair_action_adaptive
        # adaptive upgraded
        elif repairId == 6:
            repairMethod = self.repair_action_adaptive
        elif repairId == 7:
            repairMethod = self.repair_action_adaptive_with_milp
        repairMethod(LastObservationFluents, action, newObservationFluents, differentKeysLifted)
        return False


    def initialize(self):
        """
        Initializes and parses the domain model.
        """
        self.parsed_model = Parse_Model()

    def repair_action_rel_vars(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Repairs action by learning a model for only the changed fluents based on relevant state variables.
        """
        x1 = self.generalize_facts(LastObservationFluents, action)
        x1 = {k: x1[k] for k in differentKeysLifted if k in x1}

        y2 = self.generalize_facts(newObservationFluents, action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])
        results = multi_output_linear_regression(self.data[action.name])
        self.parsed_model.update_model(action.name, results)


    def repair_action_all_vars(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Learns models using all valid action-related variables.
        """

        x1 = filter_valid_predicates(action, LastObservationFluents)
        x1 = self.generalize_facts(x1, action)

        x2 = filter_valid_predicates(action, newObservationFluents)
        y2 = self.generalize_facts(x2, action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])
        results = multi_output_linear_regression(self.data[action.name])
        self.parsed_model.update_model(action.name, results)

    def repair_action_adaptive(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Tries multiple regression forms (basic, full, monomials) and picks the one with highest R² score.
        """
        if self.blockNewData:
            return

        self.numOfPredicates = len(filter_valid_predicates(action, LastObservationFluents))
        x1 = self.generalize_facts(filter_valid_predicates(action, LastObservationFluents), action)
        y2 = self.generalize_facts(filter_valid_predicates(action, newObservationFluents), action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])

        unique_states = {
            tuple(tuple(sorted(d.items())) for d in state)
            for state in self.data[action.name]
        }

        if len(unique_states) >= 2:
            data1 = [[y, {k: x[k] for k in y.keys() if k in x}] for y, x in self.data[action.name]]
            data2 = self.data[action.name]
            data3 = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]
            results = multi_output_linear_regression_for_adaptive(action.name, [data1, data2, data3], self)
            if not Config.next:
                self.parsed_model.update_model(action.name, results)
            if self.needNewParameter:
                self.addParameter(action.name)
                self.needNewParameter = False
    def repair_action_adaptive_with_milp(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Tries multiple regression forms (basic, full, monomials) and picks the one with highest R² score.
        """

        results_and_error = []
        if self.blockNewData:
            return


        self.numOfPredicates = len(filter_valid_predicates(action, LastObservationFluents))
        x1 = self.generalize_facts(filter_valid_predicates(action, LastObservationFluents), action)
        y2 = self.generalize_facts(filter_valid_predicates(action, newObservationFluents), action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}
        self.data[action.name].append([y2, x1])
        self.fullData[action.name].append([y2, LastObservationFluents, action])

        unique_states = {
            tuple(tuple(sorted(d.items())) for d in state)
            for state in self.data[action.name]
        }
        if len(unique_states) >= 2:
            data1 = [[y, {k: x[k] for k in y.keys() if k in x}] for y, x in self.data[action.name]]
            data2 = self.data[action.name]
            data3 = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]


            results = multi_output_linear_regression_for_adaptive(action.name, [data1, data2, data3], self)

            if self.needNewParameter:
                results = self.add_new_parameter_with_milp(action, results_and_error)

            if not Config.next:
                if results:
                    self.parsed_model.update_model(action.name, results)

    def add_new_parameter_with_milp(self, action, results_and_error: list[Any]) -> Any:
        if self.currentTry.get(action.name):
            self.removeParameter(action.name, self.currentTry[action.name])  # this addes new and removes old

        self.needNewParameter = False
        for param in self.parsed_model.possibleNewParameters().get('object'):
            if param in self.parsed_model.get_types_in_action(action.name):
                continue
            self.addParameterSpecific(action.name, param)  # this addes new and removes old
            data = []
            for dataRow in self.fullData[action.name]:
                x1 = self.removeNewParam(
                    self.generalize_facts(filter_valid_predicates(dataRow[2], dataRow[1]), dataRow[2]),
                    dataRow[2])

                newParam = self.getKeysOfCertinType(dataRow[1], dataRow[2])
                # monomilas with x1^2 and newparams * x1
                data.append(
                    {'y': dataRow[0], 'oldParams': x1, 'newParam': newParam, 'action': dataRow[2]})
            milp_results, error = multi_output_monomials_regression_for_adaptive_with_milp(data, self)
            results_and_error.append({"milp_results": milp_results, "error": error, "param": param})
            print(milp_results)
            print(error)
            self.removeParameterSpecific(action.name, param)  # this addes new and removes old

        best = min(results_and_error, key=lambda x: x["error"])
        best_milp_results = best["milp_results"]
        self.addParameterSpecific(action.name, best["param"])  # this addes new and removes old
        return best_milp_results

    def repair_action_adaptive_with_milp_save(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Tries multiple regression forms (basic, full, monomials) and picks the one with highest R² score.
        """

        results_and_error = []
        if self.blockNewData:
            return


        self.numOfPredicates = len(filter_valid_predicates(action, LastObservationFluents))
        x1 = self.generalize_facts(filter_valid_predicates(action, LastObservationFluents), action)
        y2 = self.generalize_facts(filter_valid_predicates(action, newObservationFluents), action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}
        self.data[action.name].append([y2, x1])
        self.fullData[action.name].append([y2, LastObservationFluents, action])

        unique_states = {
            tuple(tuple(sorted(d.items())) for d in state)
            for state in self.data[action.name]
        }
        if len(unique_states) >= 2:
            if action.name in self.currentTry:
                self.tick = self.tick +1
            if action.name in self.currentTry and self.tick % self.retry_delay == 0:
                    # do this before entering this function maybe
                    # only add the new variable,
                    # create new data (a,b1,b2) => (a^2 ,a * b1, a*b2, b1^2, b2^2)
                    data = []
                    for dataRow in self.fullData[action.name]:
                        x1 = self.removeNewParam(self.generalize_facts(filter_valid_predicates(dataRow[2], dataRow[1]), dataRow[2]), dataRow[2])

                        newParam = self.getKeysOfCertinType(dataRow[1], dataRow[2])
                        # monomilas with x1^2 and newparams * x1
                        data.append({'y': dataRow[0], 'oldParams': x1, 'newParam': newParam,'action': dataRow[2]})
                    print(data)
                    results, _ = multi_output_linear_regression_for_adaptive_with_milp(data, self)
                    if results:
                        self.parsed_model.update_model(action.name, results)
                        self.parsed_model.commit()

            else:
                data1 = [[y, {k: x[k] for k in y.keys() if k in x}] for y, x in self.data[action.name]]
                data2 = self.data[action.name]
                data3 = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]

                results = multi_output_linear_regression_for_adaptive(action.name, [data1, data2, data3], self)

            if not Config.next:
                if results:
                    self.parsed_model.update_model(action.name, results)


    def repair_action_all_monomials(self, LastObservationFluents, action, newObservationFluents, differentKeysLifted):
        """
        Repairs action by using monomial features up to degree 2.
        """
        x1 = self.generalize_facts(filter_valid_predicates(action, LastObservationFluents), action)
        y2 = self.generalize_facts(filter_valid_predicates(action, newObservationFluents), action)
        y2 = {k: y2[k] for k in differentKeysLifted if k in y2}

        self.data[action.name].append([y2, x1])
        data = [[y, generate_nested_combinations(x, degree=2)] for y, x in self.data[action.name]]

        results = multi_output_linear_regression(data)
        self.parsed_model.update_model(action.name, results)


    def getDifferentKeys(self, action, different_keys):
        if self.data.get(action.name) and self.data[action.name][0]:
            different_keys = list(self.data[action.name][0][0].keys())
        else:
            different_keys = self.generalize_facts_for_list(different_keys, action)
        return different_keys


    def generalize_facts(self, facts, action):
        """
        Replaces concrete constants in fluents with their corresponding variables.
        """
        param_vars = self.parsed_model.get_parameters_of_action(action.name)
        if len(param_vars) < len(action.groundedParameters):
            raise ValueError(
                f"Not enough param vars ({len(param_vars)}) to cover "
                f"action args ({len(action.groundedParameters)})"
            )
        replacement = {c: v for c, v in zip(action.groundedParameters, param_vars)}
        generalized = {}

        for key, val in facts.items():
            if len(key) == 1:
                generalized[key] = val
                continue
            func, *args = key
            if all(a in replacement for a in args):
                new_key = (func, *[replacement[a] for a in args])
                generalized[new_key] = val
                self.parsed_model.add_function(func, new_key[1:], action.name)

        return generalized

    def generalize_facts_for_list(self, facts_list, action):
        """
        Generalizes a list of fluent keys using the same logic as `generalize_facts`.
        """
        action_name = action.name
        args = action.groundedParameters
        param_vars = self.parsed_model.get_parameters_of_action(action_name)
        if len(param_vars) < len(action.groundedParameters):
            raise ValueError(
                f"Not enough param vars ({len(param_vars)}) to cover "
                f"action args ({len(action.groundedParameters)})"
            )
        replacement = {c: v for c, v in zip(args, param_vars)}
        generalized = []

        for key in facts_list:
            if len(key) == 1:
                generalized.append(key)
                continue
            func, *args = key
            if all(a in replacement for a in args):
                new_key = (func, *[replacement[a] for a in args])
                generalized.append(new_key)

        return generalized

    def addMissingParamsToAction(self, different_keys, action):
        #key is ('d', 'p0') // (functionName, groundedParams...)
        #action is (actionName, groundedParams...)


        for key in different_keys:
            functionName = key[0]
            for i, param in enumerate(key[1:]):
                if param not in action.groundedParameters:
                    action.groundedParameters.append(param)
                    theFunctionsParams = self.parsed_model.get_parameters(functionName)
                    #this if is inaccurate and its clause might cause later problems

                    # if its not true its means we they are equal and we already added the param (used when replanned)
                    paramsNotEqual = len(action.groundedParameters) != len(
                        self.parsed_model.get_parameters_of_action(action.name))

                    if not all(item in self.addedParametersChanged[action.name] for item in theFunctionsParams) and paramsNotEqual:
                        self.parsed_model.addParameterToAction(action.name, theFunctionsParams[i])
                        self.addedParametersChanged[action.name].extend(theFunctionsParams)
        #self.parsed_model.commit()

    def afterProblem(self):
        #for key, value in self.addedParametersChanged.items():
        #    self.parsed_model.addParameterToAction(key, value) # action.name, theFunctionsParams[i]
        # commit the new parameters
        Config.setContinue(False)
        self.addedParametersChanged = defaultdict(list)
        self.blockNewData = False
        self.parsed_model.commit()

    def addParameter(self, actionName):
        tried = self.addedParametersMakeChange[actionName]
        if len(tried) > 0:
            lastTry = tried[-1]
            self.parsed_model.removeParameterFromAction(actionName, lastTry)
            print(f"removed {lastTry} from {actionName}")
        triedTypes = [item[1] for item in tried]
        alreadyIn = self.parsed_model.get_types_in_action(actionName)
        possibleAdditions = self.parsed_model.possibleNewParameters().get('object')
        #reverse possibleAdditions[::-1]
        for possibleAddition in possibleAdditions[::-1]:
            if possibleAddition not in alreadyIn and possibleAddition not in triedTypes:
                newParameter = [f'?{possibleAddition[0]}', possibleAddition]
                newParameter = self.parsed_model.addParameterToAction(actionName, newParameter)
                print(Config.getOriginalDomain())
                self.parsed_model.resetEffects(Config.getOriginalDomain())
                Config.setContinue(True)
                self.currentTry[actionName] = newParameter
                self.addedParametersMakeChange[actionName].append(newParameter)
                self.blockNewData = True
                print(f"added {newParameter} to {actionName}")
                break

    def getKeysOfCertinType(self, dataRow: dict[tuple, int], action: Action):
        dataOfCertainTypeParameter = {}
        groundedParameter = None
        for key, value in dataRow.items():
            thisFunction = key[0]
            if len(key) >= 2:
                groundedParameter = key[1]
            #currently if the function has more than two parameters it dosen't work properly
            functionsTypes = self.parsed_model.get_parameters_type(thisFunction)
            thisType = functionsTypes[0] if len(functionsTypes) > 0 else None
            if thisType == self.currentTry[action.name][1]:
                dataOfCertainTypeParameter[key] = value
                if groundedParameter in action.groundedParameters:
                    return {key: value}
        return dataOfCertainTypeParameter


    def clean_and_merge(self, input_data, boundary=100.0, tolerance=1):
        refined_output = {}

        for target_key, values in input_data.items():
            # Initialize the sub-dictionary for this target
            refined_output[target_key] = {}

            # Filter a_coeffs: keep only if NOT near -100 or 100
            for coeff_key, val in values['a_coeffs'].items():
                if abs(abs(val) - boundary) > tolerance and round(val,5) != 0:
                    refined_output[target_key][coeff_key] = round(val,5)

            for coeff_key, val in values['b_coeff'].items():
                if abs(abs(val) - boundary) > tolerance and round(val,5) != 0:
                    refined_output[target_key][coeff_key] = round(val,5)

            refined_output[target_key]['__intercept__'] = round(values['constant'],5)

        return refined_output

    def removeNewParam(self, dataRow: dict[tuple, int], action: Action):
        dataWithoutCertainTypeParameter = {}

        for key, value in dataRow.items():
            thisFunction = key[0]
            #currently if the function has more than two parameters it dosen't work properly
            functionsTypes = self.parsed_model.get_parameters_type(thisFunction)
            thisType = functionsTypes[0] if len(functionsTypes) > 0 else None
            if thisType != self.currentTry[action.name][1]:
                dataWithoutCertainTypeParameter[key] = value

        return dataWithoutCertainTypeParameter

    def addParameterSpecific(self, actionName, param):
            newParameter = [f'?{param[0]}', param]
            newParameter = self.parsed_model.addParameterToAction(actionName, newParameter)
            print(Config.getOriginalDomain())
            self.currentTry[actionName] = newParameter
            print(f"added {newParameter} to {actionName}")

    def removeParameterSpecific(self, actionName, param):
        torRemoveParameter = [f'?{param[0]}', param]

        self.parsed_model.removeParameterFromAction(actionName, torRemoveParameter)
        print(f"removed {torRemoveParameter} to {actionName}")

        self.currentTry[actionName] = None

    #param is ['?d', 'dummy_1']
    def removeParameter(self, actionName, param):
        self.parsed_model.removeParameterFromAction(actionName, param)
        print(f"removed {param} to {actionName}")

        self.currentTry[actionName] = None
