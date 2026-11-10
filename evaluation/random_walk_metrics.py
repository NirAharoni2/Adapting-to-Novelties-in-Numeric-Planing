"""Random-walk based evaluation of a domain against the real (gold) domain.

Pipeline:
  1. Random walks are generated with the REAL domain on the given problems, using SAM's
     RandomWalkTrajectoriesCreator (mix of applicable and inapplicable actions). They are cached on disk.
  2. The NEW domain is evaluated on those trajectories with SAM's NumericPerformanceCalculator, per action:
     precondition precision/recall, effects precision/recall and effects MSE.

The metric code itself is the vendored SAM code in PDDL2Gym/sam_learning (identical to SPL-BGU/numeric-sam).

Example:
  python evaluation/random_walk_metrics.py \
      --real-domain dataset/drone/domain.pddl \
      --new-domain  dataset/drone/novelty_domain_1.pddl \
      --problems    dataset/drone/instances/seed_1
"""

import argparse
import csv
import logging
import os
import random
import re
import subprocess
import sys
import types
import uuid
from pathlib import Path


def _mean(values):
    # Not stdlib `statistics.mean`: when PDDL2Gym/sam_learning is on PYTHONPATH (it is a PyCharm source root),
    # `import statistics` resolves to SAM's package before the validators stand-in below is installed.
    values = list(values)
    return sum(values) / len(values)

PROJECT_ROOT = Path(__file__).resolve().parents[1]
SAM_ROOT = PROJECT_ROOT / "PDDL2Gym" / "sam_learning"

# ---------------------------------------------------------------------------------------------------------
# Import setup.
# SAM's `validators` package imports every solver (ENHSP needs jdk4py, and FF / Fast Downward / Metric-FF
# need env vars) although the metrics only need VAL. A small stand-in module provides just that.
# SAM's package is named `statistics`, so it must come before the stdlib on sys.path.
# ---------------------------------------------------------------------------------------------------------
VALID_PLAN = "Plan valid"
_VAL_EXECUTABLE = None  # set from --val


def _run_validate_script(domain_file_path: Path, problem_file_path: Path, solution_file_path: Path) -> Path:
    """Same call as SAM's validators.run_validate_script (`Validate -v -t 0.1 ...`), without chdir."""
    log_path = Path(domain_file_path).parent / f"validation_log_{uuid.uuid4()}.txt"
    command = [str(_VAL_EXECUTABLE), "-v", "-t", "0.1", str(domain_file_path), str(problem_file_path), str(solution_file_path)]
    with open(log_path, "wt", encoding="utf-8") as log_file:
        subprocess.run(command, stdout=log_file, stderr=subprocess.STDOUT, timeout=60)
    return log_path


_validators_stub = types.ModuleType("validators")
_validators_stub.VALID_PLAN = VALID_PLAN
_validators_stub.run_validate_script = _run_validate_script
sys.modules["validators"] = _validators_stub

sys.path.insert(0, str(SAM_ROOT))
sys.modules.pop("statistics", None)  # drop the stdlib module so SAM's package is the one imported

from pddl_plus_parser.exporters import ProblemExporter, TrajectoryExporter  # noqa: E402
from pddl_plus_parser.lisp_parsers import DomainParser, ProblemParser, TrajectoryParser  # noqa: E402
from pddl_plus_parser.models import ActionCall, Problem  # noqa: E402

import trajectory_creators.random_walk_trajectories_creator as rw_module  # noqa: E402
from statistics.numeric_performance_calculator import NumericPerformanceCalculator, NUMERIC_PERFORMANCE_STATS  # noqa: E402
from statistics.performance_calculation_utils import _ground_executed_action  # noqa: E402
from utilities import LearningAlgorithmType, NegativePreconditionPolicy  # noqa: E402

logger = logging.getLogger("random_walk_metrics")


# ---------------------------------------------------------------------------------------------------------
# Step 1: random walks on the real domain
# ---------------------------------------------------------------------------------------------------------
def _natural_key(path: Path):
    return [int(t) if t.isdigit() else t for t in re.split(r"(\d+)", path.stem)]


def generate_random_walks(real_domain_path: Path, problem_paths, output_dir: Path, max_steps: int,
                          inapplicable_prob: float, seed: int, regenerate: bool):
    """Create (or reuse) one random-walk trajectory per problem. Returns a list of (problem_path, trajectory_path)."""
    output_dir.mkdir(parents=True, exist_ok=True)
    rw_module.MAX_NUM_STEPS_IN_TRAJECTORY = max_steps
    rw_module.inapplicable_action_probability = inapplicable_prob

    domain = DomainParser(real_domain_path).parse_domain()
    creator = rw_module.RandomWalkTrajectoriesCreator(domain_file_name=real_domain_path.name,
                                                      working_directory_path=real_domain_path.parent)
    exporter = TrajectoryExporter(domain=domain, allow_invalid_actions=False)

    pairs = []
    for index, problem_path in enumerate(problem_paths):
        trajectory_path = output_dir / f"{problem_path.stem}_random_walk.trajectory"
        if trajectory_path.exists() and not regenerate:
            pairs.append((problem_path, trajectory_path))
            continue

        random.seed(seed + index)  # reproducible per problem, independent of how many problems are run
        problem = ProblemParser(problem_path=problem_path, domain=domain).parse_problem()
        grounded_actions = creator.create_all_grounded_actions(
            observed_objects=problem.objects, domain=domain, initial_state_fluents=list(problem.initial_state_fluents.keys()))
        if not grounded_actions:
            logger.warning(f"{problem_path.name}: no grounded actions, skipped.")
            continue

        triplets, plan = creator.create_random_plan(domain, problem, grounded_actions)
        if not triplets:
            logger.warning(f"{problem_path.name}: empty random walk, skipped.")
            continue

        exporter.export_to_file(triplets, trajectory_path)
        (output_dir / f"{problem_path.stem}_random_walk.solution").write_text("\n".join(plan))
        logger.info(f"{problem_path.name}: random walk of {len(triplets)} steps.")
        pairs.append((problem_path, trajectory_path))

    return pairs


# ---------------------------------------------------------------------------------------------------------
# Step 2: SAM's metrics on the new domain
# ---------------------------------------------------------------------------------------------------------
def _signature(action):
    return [param_type.name for param_type in action.signature.values()]


def _fit_call(action_call: ActionCall, domain) -> ActionCall:
    """Fit a real-domain action call to `domain`'s action: if the call has more parameters than the action,
    the extra trailing parameters are dropped (e.g. (move d1 l1 l2) -> (move d1 l1) for a 2-parameter move).

    Note: pddl_plus_parser's Operator pairs call objects with the signature via zip, so SAM's effects/MSE code
    (which builds Operators from the full call) already ignores the same trailing objects."""
    num_params = len(domain.actions[action_call.name].signature)
    if len(action_call.parameters) <= num_params:
        return action_call
    return ActionCall(action_call.name, list(action_call.parameters[:num_params]))


class RandomWalkPerformanceCalculator(NumericPerformanceCalculator):
    """SAM's NumericPerformanceCalculator with these changes:
      * use_val=False checks precondition applicability in Python (Operator.is_applicable on both domains)
        instead of one VAL call per state.
      * If the new domain's action has FEWER parameters than the real one, the real call is truncated to fit
        (trailing parameters removed) when it is run on the new domain.
      * If the new domain's action needs MORE parameters than the real call provides, there is nothing to fill
        them with, so the action is excluded. SAM's code already skips actions missing from the learned
        domain, so these are removed from the parsed new domain before evaluation.
    The precision/recall/MSE computations are SAM's methods, unchanged."""

    def __init__(self, *args, use_val: bool = False, excluded_actions=(), **kwargs):
        super().__init__(*args, **kwargs)
        self.use_val = use_val
        self.excluded_actions = set(excluded_actions)
        self._parsed_domains = {}

    def calculate_performance(self, learned_domain_path: Path, num_used_observations: int, policy) -> None:
        # Same composition as SemanticPerformanceCalculator + NumericPerformanceCalculator.calculate_performance,
        # but on a parsed domain with the excluded actions removed.
        learned_domain = DomainParser(domain_path=learned_domain_path, partial_parsing=False).parse_domain()
        for action_name in self.excluded_actions:
            learned_domain.actions.pop(action_name, None)
        self._parsed_domains[learned_domain_path] = learned_domain

        preconditions_precision, preconditions_recall = self.calculate_preconditions_semantic_performance(learned_domain, learned_domain_path)
        effects_precision, effects_recall = self.calculate_effects_semantic_performance(learned_domain)
        effects_mse = self.calculate_effects_mse(learned_domain)
        for action_name in self.model_domain.actions:
            self.combined_stats.append({
                "learning_algorithm": self.learning_algorithm.name,
                "policy": policy.name,
                "action_name": action_name,
                "num_trajectories": num_used_observations,
                "epsilon_precision": self.epsilon_precision,
                "precondition_precision": preconditions_precision.get(action_name, 1),
                "precondition_recall": preconditions_recall.get(action_name, 0),
                "effects_precision": effects_precision.get(action_name, 1),
                "effects_recall": effects_recall.get(action_name, 1),
                "effects_mse": effects_mse.get(action_name, 0),
            })

    def _applicable_with_val(self, action_call, learned_call, learned_domain_path, observed_state, problem_objects):
        """SAM's VAL check (same problem export), but the new domain gets the fitted call."""
        problem = Problem(domain=self.model_domain)
        problem.name = f"instance_{uuid.uuid4()}"
        problem.objects = problem_objects
        problem.initial_state_predicates = observed_state.state_predicates
        problem.initial_state_fluents = observed_state.state_fluents
        problem_path = self.temp_dir_path / f"applicability_validation_problem_{uuid.uuid4()}.pddl"
        ProblemExporter().export_problem(problem=problem, export_path=problem_path)
        model_plan = self.temp_dir_path / f"applicability_validation_solution_{uuid.uuid4()}.solution"
        learned_plan = self.temp_dir_path / f"applicability_validation_solution_{uuid.uuid4()}.solution"
        model_plan.write_text(str(action_call))
        learned_plan.write_text(str(learned_call))
        try:
            applicable_in_model = self._calculate_applicability_in_state(problem_path, model_plan, self.model_domain_path)
            applicable_in_learned = self._calculate_applicability_in_state(problem_path, learned_plan, learned_domain_path)
        finally:
            for path in (problem_path, model_plan, learned_plan):
                path.unlink(missing_ok=True)
        return applicable_in_learned, applicable_in_model

    def _calculate_action_applicability_rate(self, action_call, learned_domain_path, observed_state, problem_objects):
        if learned_domain_path not in self._parsed_domains:
            self._parsed_domains[learned_domain_path] = DomainParser(learned_domain_path, partial_parsing=False).parse_domain()
        learned_domain = self._parsed_domains[learned_domain_path]
        learned_call = _fit_call(action_call, learned_domain)

        if self.use_val:
            applicable_in_learned, applicable_in_model = self._applicable_with_val(
                action_call, learned_call, learned_domain_path, observed_state, problem_objects)
        else:
            applicable_in_learned = _ground_executed_action(learned_call, learned_domain, problem_objects).is_applicable(observed_state)
            applicable_in_model = _ground_executed_action(action_call, self.model_domain, problem_objects).is_applicable(observed_state)
        return (
            int(applicable_in_learned and applicable_in_model),
            int(applicable_in_learned and not applicable_in_model),
            int(not applicable_in_learned and applicable_in_model),
        )


def _functions_block(text: str):
    """Return (start, end) of the body of the (:functions ...) section, or None."""
    match = re.search(r"\(\s*:functions\b", text, flags=re.IGNORECASE)
    if not match:
        return None
    depth, i = 1, match.end()
    while i < len(text) and depth:
        depth += {"(": 1, ")": -1}.get(text[i], 0)
        i += 1
    return match.end(), i - 1


def _function_declaration(text: str, function_name: str):
    block = _functions_block(text)
    if block is None:
        return None
    match = re.search(rf"\(\s*{re.escape(function_name)}(\s[^()]*)?\)", text[block[0]:block[1]], flags=re.IGNORECASE)
    return match.group(0) if match else None


def _parse_new_domain(new_domain_path: Path, real_domain_path: Path, work_dir: Path):
    """Parse the new domain. If it uses functions it never declares (e.g. a repair added the novelty's fluent
    `chop_factor` to an effect without declaring it), copy their declarations from the real domain into a
    temporary copy of the file and use that copy. The original file is not modified.
    Returns (domain, path_to_evaluate, added_function_names)."""
    text = new_domain_path.read_text()
    real_text = real_domain_path.read_text()
    added = []
    while True:
        candidate_path = new_domain_path
        if added:
            candidate_path = work_dir / f"{new_domain_path.stem}_with_declared_functions_{uuid.uuid4().hex[:8]}.pddl"
            candidate_path.write_text(text)
        try:
            return DomainParser(candidate_path, partial_parsing=False).parse_domain(), candidate_path, added
        except KeyError as error:
            if candidate_path != new_domain_path:
                candidate_path.unlink(missing_ok=True)
            function_name = str(error.args[0]) if error.args else ""
            declaration = _function_declaration(real_text, function_name)
            if not function_name or function_name in added or declaration is None:
                raise ValueError(f"{new_domain_path.name} uses '{function_name}', which neither it nor the real domain "
                                 f"declares as a function.") from error
            block = _functions_block(text)
            if block is None:  # no (:functions) section at all: add one before the first action
                action = re.search(r"\(\s*:action\b", text, flags=re.IGNORECASE)
                text = f"{text[:action.start()]}(:functions\n        {declaration}\n    )\n\n    {text[action.start():]}"
            else:
                text = f"{text[:block[0]]}\n        {declaration}{text[block[0]:]}"
            added.append(function_name)
            logger.warning(f"{new_domain_path.name} uses undeclared function '{function_name}'; "
                           f"declared it as in the real domain: {declaration}")


def evaluate(real_domain_path: Path, new_domain_path: Path, pairs, work_dir: Path, use_val: bool):
    real_domain = DomainParser(real_domain_path, partial_parsing=False).parse_domain()
    observations = []
    for problem_path, trajectory_path in pairs:
        problem = ProblemParser(problem_path, real_domain).parse_problem()
        observations.append(TrajectoryParser(real_domain, problem).parse_trajectory(trajectory_path))

    work_dir.mkdir(parents=True, exist_ok=True)
    new_domain, evaluated_domain_path, added_functions = _parse_new_domain(new_domain_path, real_domain_path, work_dir)
    try:
        return _evaluate_parsed(real_domain, real_domain_path, new_domain, evaluated_domain_path, observations,
                                work_dir, use_val, added_functions)
    finally:
        if evaluated_domain_path != new_domain_path:
            evaluated_domain_path.unlink(missing_ok=True)


def _evaluate_parsed(real_domain, real_domain_path, new_domain, new_domain_path, observations, work_dir, use_val,
                     added_functions):
    notes = {}       # action -> reason it is NOT scored (metrics blanked)
    info_notes = {}  # action -> remark on an action that IS scored
    excluded = []
    for name, action in real_domain.actions.items():
        if name not in new_domain.actions:
            notes[name] = "missing in new domain"
            continue
        real_sig, new_sig = _signature(action), _signature(new_domain.actions[name])
        if len(new_sig) > len(real_sig):
            notes[name] = f"new action needs more parameters: real {real_sig} vs new {new_sig}"
            excluded.append(name)
        elif len(new_sig) < len(real_sig):
            info_notes[name] = f"call truncated to {len(new_sig)} params: real {real_sig} vs new {new_sig}"
            if new_sig != real_sig[: len(new_sig)]:
                info_notes[name] += " (kept parameter types differ)"
            logger.warning(f"{name}: {info_notes[name]}")
        elif new_sig != real_sig:
            info_notes[name] = f"parameter types differ: real {real_sig} vs new {new_sig}"
            logger.warning(f"{name}: {info_notes[name]}")
    for name in sorted(set(new_domain.actions) - set(real_domain.actions)):
        logger.warning(f"Action '{name}' exists only in the new domain; it cannot be evaluated on real-domain walks.")

    transitions = {name: 0 for name in real_domain.actions}
    for observation in observations:
        for component in observation.components:
            transitions[component.grounded_action_call.name] = transitions.get(component.grounded_action_call.name, 0) + 1
    for name, count in transitions.items():
        if count == 0 and name not in notes:
            notes[name] = "not observed in the random walks"

    calculator = RandomWalkPerformanceCalculator(
        model_domain=real_domain, model_domain_path=real_domain_path, observations=observations,
        working_directory_path=work_dir, learning_algorithm=LearningAlgorithmType.numeric_sam,
        use_val=use_val, excluded_actions=excluded)
    calculator.calculate_performance(new_domain_path, len(observations), policy=NegativePreconditionPolicy.no_remove)

    rows = []
    for row in calculator.combined_stats:
        name = row["action_name"]
        row = dict(row, num_transitions=transitions.get(name, 0), note=notes.get(name, info_notes.get(name, "")),
                   scored=name not in notes)
        if not row["scored"]:  # SAM fills these with default values (e.g. precision 1 / recall 0); blank them instead
            row.update({c: "" for c in METRIC_COLUMNS})
        rows.append(row)

    num_steps = sum(len(o.components) for o in observations)
    domain_note = (f"new domain uses undeclared functions {added_functions} (declared from the real domain)"
                   if added_functions else "")
    return rows, len(observations), num_steps, domain_note


# ---------------------------------------------------------------------------------------------------------
# Output
# ---------------------------------------------------------------------------------------------------------
METRIC_COLUMNS = ["precondition_precision", "precondition_recall", "effects_precision", "effects_recall", "effects_mse"]


def _macro_average(rows):
    """Mean over the scored actions."""
    evaluated = [r for r in rows if r["scored"]]
    return {c: (_mean(float(r[c]) for r in evaluated) if evaluated else "") for c in METRIC_COLUMNS}, len(evaluated)


def write_csv(rows, output_path: Path, repair_strategy: str, domain_note: str = ""):
    output_path.parent.mkdir(parents=True, exist_ok=True)
    fieldnames = ["repair_strategy"] + NUMERIC_PERFORMANCE_STATS + ["num_transitions", "note"]
    domains = {"repair_strategy": repair_strategy}
    averages, num_evaluated = _macro_average(rows)
    with open(output_path, "wt", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
        writer.writeheader()
        for row in rows:
            writer.writerow({**domains, **row})
        writer.writerow({**domains, "action_name": "MACRO_AVERAGE", **averages,
                         "num_transitions": sum(r["num_transitions"] for r in rows),
                         "note": f"mean over {num_evaluated}/{len(rows)} evaluated actions" +
                                 (f"; {domain_note}" if domain_note else "")})


def print_table(rows):
    def fmt(value):
        return f"{float(value):>14.4f}" if value != "" else f"{'-':>14}"

    header = (f"{'action':<24}{'steps':>7}" +
              "".join(f"{c.replace('precondition', 'pre').replace('effects', 'eff'):>14}" for c in METRIC_COLUMNS))
    print(header)
    print("-" * len(header))
    for r in rows:
        line = f"{r['action_name']:<24}{r['num_transitions']:>7}" + "".join(fmt(r[c]) for c in METRIC_COLUMNS)
        print(line + (f"   ({r['note']})" if r["note"] else ""))
    print("-" * len(header))
    averages, num_evaluated = _macro_average(rows)
    print(f"{'MACRO_AVERAGE':<24}{'':>7}" + "".join(fmt(averages[c]) for c in METRIC_COLUMNS) +
          f"   (over {num_evaluated}/{len(rows)} actions)")


def main():
    global _VAL_EXECUTABLE
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--real-domain", required=True, type=Path, help="Real (gold) domain, used to generate the random walks.")
    parser.add_argument("--new-domain", required=True, type=Path, help="Domain to evaluate.")
    parser.add_argument("--problems", required=True, type=Path, help="Directory with the problem files.")
    parser.add_argument("--strategy", default=None,
                        help="Repair strategy that created the new domain; written to the CSV's repair_strategy column "
                             "(default: the new domain's file name).")
    parser.add_argument("--problem-prefix", default="pfile", help="Problem file prefix (default: pfile).")
    parser.add_argument("--problem-range", type=int, nargs=2, metavar=("START", "END"), default=None,
                        help="Use only problems whose number is in range(START, END), e.g. 1 51 -> pfile1..pfile50.")
    parser.add_argument("--num-problems", type=int, default=None, help="Use only the first N problems (natural order).")
    parser.add_argument("--trajectories-dir", type=Path, default=None,
                        help="Where random walks are cached (default: results_random_walk/trajectories/<real-domain>/<problems-dir>).")
    parser.add_argument("--output", type=Path, default=None, help="Output CSV (default: results_random_walk/<real>__vs__<new>.csv).")
    parser.add_argument("--max-steps", type=int, default=rw_module.MAX_NUM_STEPS_IN_TRAJECTORY)
    parser.add_argument("--inapplicable-prob", type=float, default=rw_module.inapplicable_action_probability)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--regenerate", action="store_true", help="Regenerate random walks even if cached.")
    parser.add_argument("--val", type=Path, default=None,
                        help="Path to the VAL `Validate` executable. If given, precondition applicability is checked with VAL "
                             "(as in SAM); otherwise it is checked in Python.")
    parser.add_argument("-v", "--verbose", action="store_true")
    args = parser.parse_args()

    logging.basicConfig(format="%(asctime)s %(levelname)-7s %(message)s", datefmt="%H:%M:%S", level=logging.WARNING)
    logger.setLevel(logging.DEBUG if args.verbose else logging.INFO)
    # inapplicable random-walk steps are intentional; pddl_plus_parser warns on each one
    logging.getLogger("pddl_plus_parser").setLevel(logging.ERROR)

    real_domain = args.real_domain.resolve()
    new_domain = args.new_domain.resolve()
    problems_dir = args.problems.resolve()
    for p in (real_domain, new_domain, problems_dir):
        if not p.exists():
            parser.error(f"not found: {p}")
    if args.val is not None:
        _VAL_EXECUTABLE = args.val.resolve()
        if not _VAL_EXECUTABLE.exists():
            parser.error(f"VAL executable not found: {_VAL_EXECUTABLE}")

    problem_paths = sorted(problems_dir.glob(f"{args.problem_prefix}*.pddl"), key=_natural_key)
    if args.problem_range is not None:
        first, end = args.problem_range
        numbered = [(p, re.search(r"(\d+)$", p.stem)) for p in problem_paths]
        problem_paths = [p for p, m in numbered if m and first <= int(m.group(1)) < end]
    if args.num_problems is not None:
        problem_paths = problem_paths[: args.num_problems]
    if not problem_paths:
        parser.error(f"no '{args.problem_prefix}*.pddl' files in {problems_dir}")

    results_root = PROJECT_ROOT / "results_random_walk"
    trajectories_dir = (args.trajectories_dir or
                        results_root / "trajectories" / f"{real_domain.parent.name}_{real_domain.stem}" / problems_dir.name).resolve()
    output_path = (args.output or results_root / f"{real_domain.parent.name}_{real_domain.stem}__vs__{new_domain.stem}.csv").resolve()

    logger.info(f"Random walks on {real_domain.name} for {len(problem_paths)} problems -> {trajectories_dir}")
    pairs = generate_random_walks(real_domain, problem_paths, trajectories_dir, args.max_steps,
                                  args.inapplicable_prob, args.seed, args.regenerate)

    logger.info(f"Evaluating {new_domain.name} ({'VAL' if _VAL_EXECUTABLE else 'Python'} applicability check)")
    rows, num_trajectories, num_steps, domain_note = evaluate(real_domain, new_domain, pairs, trajectories_dir.parent / "_work",
                                                              use_val=_VAL_EXECUTABLE is not None)

    print(f"\nReal: {real_domain}\nNew:  {new_domain}\nTest set: {num_trajectories} random walks, {num_steps} transitions\n")
    if domain_note:
        print(f"Note: {domain_note}\n")
    print_table(rows)
    write_csv(rows, output_path, args.strategy or new_domain.stem, domain_note)
    print(f"\nSaved: {output_path}")


if __name__ == "__main__":
    main()
