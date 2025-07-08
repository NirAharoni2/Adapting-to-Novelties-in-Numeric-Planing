import re

class Effect:
    def __init__(self, line: str):
        self.line = line.strip()
        self.effect_type = self.determine_type()
        self.parsed = self.parse_effect()

    def determine_type(self):
        numeric_keywords = ['increase', 'decrease', '=', 'assign']
        for keyword in numeric_keywords:
            if self.line.startswith(f'({keyword}'):
                return 'numeric'
        return 'boolean'

    def get_predicate_name(self, expr):
        # Extract predicate from the expression: e.g., (at ?s ?w2) → "at"
        match = re.match(r'\(\s*([^\s()]+)', expr)
        return match.group(1) if match else None

    def parse_effect(self):
        if self.effect_type == 'numeric':
            # Find the outermost assignment target
            match = re.match(r'\((increase|decrease|=|assign)\s+\(([^()]+)\)', self.line)
            if match:
                full_target = match.group(2).strip()
                return {full_target: self.line}
        else:
            pred = self.get_predicate_name(self.line)
            return {pred: self.line}
        return {}

    def get(self):
        return self.parsed


# Re-test both types
numeric_effect = Effect("(decrease (sled_supplies ?s) (+ (* 2 (sled_supplies ?s)) 1))")
boolean_effect = Effect("(at2 ?s ?w2 ?a)")

