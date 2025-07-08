
import re
from typing import List, Dict

from Z_Orgonized.UtilitiesForModel.effect import Effect


def extract_balanced_block(text: str, keyword: str) -> str:
    """Extract a full balanced block starting after a keyword like ':precondition'."""
    start = text.find(keyword)
    if start == -1:
        return ""

    i = text.find("(", start)
    if i == -1:
        return ""

    depth = 0
    for j in range(i, len(text)):
        if text[j] == '(':
            depth += 1
        elif text[j] == ')':
            depth -= 1
            if depth == 0:
                return text[i:j + 1].strip()
    return ""
def extract_all_balanced_expressions(text: str) -> List[str]:
    """Extract all top-level balanced expressions inside a block like (and ...)"""
    expressions = []
    i = 0
    while i < len(text):
        if text[i] == '(':
            start = i
            depth = 1
            i += 1
            while i < len(text) and depth > 0:
                if text[i] == '(':
                    depth += 1
                elif text[i] == ')':
                    depth -= 1
                i += 1
            expressions.append(text[start:i].strip())
        else:
            i += 1
    return expressions

class Action:
    def __init__(self, block: str):
        self.raw = block.strip()
        self.description = self.extract_description()
        self.name = self.extract_name()
        self.parameters = extract_balanced_block(self.raw, ":parameters")
        self.preconditions = extract_balanced_block(self.raw, ":precondition")
        self.effects = self.parse_effects()

    def extract_description(self):
        match = re.search(r'^\s*;;\s*(.*)', self.raw, re.MULTILINE)
        return match.group(0).strip() if match else ""

    def extract_name(self):
        match = re.search(r':action\s+([^\s()]+)', self.raw)
        return match.group(1) if match else ""

    def parse_effects(self):
        effect_block = extract_balanced_block(self.raw, ":effect").strip()
        if not effect_block:
            return {}

        if effect_block.startswith("(and") and effect_block.endswith(")"):
            inner = effect_block[4:-1].strip()
            lines = extract_all_balanced_expressions(inner)
        else:
            lines = [effect_block]

        effects = {}
        for line in lines:
            if line:
                eff = Effect(line)
                effects.update(eff.get())
        return effects

    def as_dict(self):
        return {
            "description": self.description,
            "name": self.name,
            "parameters": self.parameters,
            "preconditions": self.preconditions,
            "effect": self.effects
        }

    def to_text(self):
        lines = []
        if self.description:
            lines.append(self.description)
        lines.append(f"(:action {self.name}")
        lines.append(f" :parameters {self.parameters}")
        lines.append(f" :precondition {self.preconditions}")

        # Reconstruct effects
        effect_lines = []
        for effect in self.effects.values():
            effect_lines.append(f"  {effect}")
        if len(effect_lines) > 1:
            effects_block = " :effect (and\n" + "\n".join(effect_lines) + ")"
        elif effect_lines:
            effects_block = f" :effect {effect_lines[0]}"
        else:
            effects_block = " :effect ()"
        lines.append(effects_block)
        lines.append(")")
        return "\n".join(lines)