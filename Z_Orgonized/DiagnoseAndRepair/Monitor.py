from Z_Orgonized.Utilities.parse_observation import parse_observation
from Z_Orgonized.Utilities.parse_trace import parse_trace


class Monitor:
    def __init__(self):
        self.step = None
        self.traceList = None

    def createTrace(self, domain_name, instance_number):
        self.traceList = parse_trace(rf"C:\newProject\ipc2023-dataset\{domain_name}\instances\trace_pfile{instance_number}.pddl")
        self.step = 0


    def check_inequality(self, observation):
        def normalize_key(key):
            # Converts keys like "(sled_supplies s0)" -> "['sled_supplies', 's0']"
            key = key.strip("()")
            parts = key.split()
            return str(parts)

        self.step += 1

        dict1 = observation
        dict2 = self.traceList[self.step]
        different_keys = []
        # Compare fluents
        for key, val in dict1.get('fluents', {}).items():
            norm_key = normalize_key(key)

            if norm_key in dict2 and dict2[norm_key] != val:
                different_keys.append(key)

        # Compare predicates (1 = True, 0 = False)
        for key, val in dict1.get('predicates', {}).items():
            norm_key = str(key.split())
            expected_val = True if val == 1 else False
            if norm_key in dict2 and dict2[norm_key] != expected_val:
                different_keys.append(key)

        return len(different_keys) > 0, different_keys
