import numpy as np

from typing import List, Tuple

def edge_to_inequality(p1, p2):
    x1, y1 = p1
    x2, y2 = p2

    # Compute edge vector and normal
    dx = x2 - x1
    dy = y2 - y1

    # Outward normal (perpendicular vector)
    a = dy
    b = -dx
    c = -(a * x1 + b * y1)

    return (a, b, c)  # Represents: a*x + b*y + c <= 0

def hull_to_inequalities(hull):
    n = len(hull)
    inequalities = []
    for i in range(n):
        p1 = hull[i]
        p2 = hull[(i + 1) % n]  # Wrap around
        inequalities.append(edge_to_inequality(p1, p2))
    return inequalities

def cross(o: Tuple[int, int], a: Tuple[int, int], b: Tuple[int, int]) -> int:
    """Cross product of vectors OA and OB (origin at O)."""
    return (a[0] - o[0]) * (b[1] - o[1]) - (a[1] - o[1]) * (b[0] - o[0])

def convex_hull(points: List[Tuple[int, int]]) -> List[Tuple[int, int]]:
    """Computes the convex hull of a set of 2D points."""
    points = sorted(set(points))  # Remove duplicates and sort

    if len(points) <= 1:
        return points

    # Build the lower hull
    lower = []
    for p in points:
        while len(lower) >= 2 and cross(lower[-2], lower[-1], p) <= 0:
            lower.pop()
        lower.append(p)

    # Build the upper hull
    upper = []
    for p in reversed(points):
        while len(upper) >= 2 and cross(upper[-2], upper[-1], p) <= 0:
            upper.pop()
        upper.append(p)

    # Concatenate lower and upper hulls (remove last point of each to avoid duplication)
    return lower[:-1] + upper[:-1]

def convex_hull_1d(points):
    if not points:
        return []
    return [min(points), max(points)]



class Repair:
    def __init__(self):
        pass
    
    def repair_action(self, action):
        self.fix_action_precondition(action)
        self.fix_action_effects(action)

    def fix_action_precondition(self, points):
        hull = convex_hull(points)
        return hull

    def fix_action_effects(self, pairs):
        """
        Given a list of (x, y) pairs where x and y are same-length vectors,
        estimate vectors a and b such that y ≈ x * a + b (element-wise).
        """
        num_features = len(pairs[0][0])
        num_samples = len(pairs)

        x_matrix = np.array([x for x, _ in pairs])  # shape: (samples, features)
        y_matrix = np.array([y for _, y in pairs])  # shape: (samples, features)

        a = np.zeros(num_features)
        b = np.zeros(num_features)

        for i in range(num_features):
            xi = x_matrix[:, i]
            yi = y_matrix[:, i]

            A = np.vstack([xi, np.ones(len(xi))]).T
            coeffs, _, _, _ = np.linalg.lstsq(A, yi, rcond=None)
            a[i], b[i] = coeffs

        return a, b



x1 = [3]
y1 = [1]

x2 = [2]
y2 = [0]

x3 = [4]
y3 = [2]

x4 = [5]
y4 = [3]

pairs = [[x1,y1], [x2,y2], [x3,y3], [x4,y4]]
points = [tuple(x1), tuple(x2), tuple(x3), tuple(x4)]
repair = Repair()
a, b = repair.fix_action_effects(pairs)
hull = convex_hull_1d([x1,x2,x3,x4])
print(f"a = {a}, b = {b}")
print(f"hull = {hull}")
#print(hull_to_inequalities(hull))
