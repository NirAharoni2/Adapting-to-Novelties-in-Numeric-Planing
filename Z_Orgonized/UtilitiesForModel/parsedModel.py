import re
from typing import List, Dict

from Z_Orgonized.UtilitiesForModel.Action import Action


class Parse_Model:
    def __init__(self, domain_text: str):
        self.domain_text = domain_text.strip()
        self.header, self.actions = self.parse_domain()

    def parse_domain(self):
        lines = self.domain_text.splitlines()
        header_lines = []
        actions = {}
        in_action = False
        buffer = []
        comment_buffer = []
        paren_depth = 0

        for line in lines:
            stripped = line.strip()

            if not in_action:
                if stripped.startswith(";;"):
                    comment_buffer = [stripped]
                elif stripped.startswith("(:action"):
                    in_action = True
                    buffer = comment_buffer + [line]
                    comment_buffer = []
                    paren_depth = line.count("(") - line.count(")")
                else:
                    header_lines.append(line)
            else:
                buffer.append(line)
                paren_depth += line.count("(") - line.count(")")
                if paren_depth == 0:
                    action_text = "\n".join(buffer).strip()
                    action = Action(action_text)
                    actions[action.name] = action
                    buffer = []
                    in_action = False

        # Clean header: remove trailing blank lines and lone closing parens
        while header_lines and header_lines[-1].strip() == "":
            header_lines.pop()

        if header_lines and header_lines[-1].strip() == ")":
            header_lines.pop()

        header = "\n".join(header_lines).strip()
        return header, actions

    def as_dict(self):
        return {
            "header": self.header,
            "actions": {name: act.as_dict() for name, act in self.actions.items()}
        }

    def reconstruct_model(self) -> str:
        lines = []

        # Add header
        lines.append(self.header)

        # Add actions
        for action in self.actions.values():
            lines.append(action.to_text())
            lines.append("")  # blank line between actions
        lines.append(")")  # blank line between actions
        return "\n".join(lines).strip()


    def update_action_effect(self, action_name: str, key: str, new_value):
        if action_name not in self.actions:
            raise ValueError(f"Action '{action_name}' not found.")

        action = self.actions[action_name]

        if key not in action.effects:
            raise ValueError(f"Key '{key}' not found in the effect of action '{action_name}'.")

        self.actions[action_name].effects[key] = new_value
