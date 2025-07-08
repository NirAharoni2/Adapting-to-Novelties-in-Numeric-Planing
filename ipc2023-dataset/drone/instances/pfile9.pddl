;;Instance with 1x1x4 points
(define (problem name) (:domain domain_name)
(:objects
x0y0z0 - location
x0y0z1 - location
x0y0z2 - location
x0y0z3 - location
x0y1z3 - location
x1y1z3 - location
x1y1z4 - location
x1y2z4 - location
)
(:init (= (x) 0) (= (y) 0) (= (z) 0)
 (= (min_x) 0)  (= (max_x) 1)
 (= (min_y) 0)  (= (max_y) 2)
 (= (min_z) 0)  (= (max_z) 4)
(= (xl x0y0z0) 0)
(= (yl x0y0z0) 0)
(= (zl x0y0z0) 0)
(= (xl x0y0z1) 0)
(= (yl x0y0z1) 0)
(= (zl x0y0z1) 1)
(= (xl x0y0z2) 0)
(= (yl x0y0z2) 0)
(= (zl x0y0z2) 2)
(= (xl x0y0z3) 0)
(= (yl x0y0z3) 0)
(= (zl x0y0z3) 3)
(= (xl x0y1z3) 0)
(= (yl x0y1z3) 1)
(= (zl x0y1z3) 3)
(= (xl x1y1z3) 1)
(= (yl x1y1z3) 1)
(= (zl x1y1z3) 3)
(= (xl x1y1z4) 1)
(= (yl x1y1z4) 1)
(= (zl x1y1z4) 4)
(= (xl x1y2z4) 1)
(= (yl x1y2z4) 2)
(= (zl x1y2z4) 4)
(= (battery-level) 24)
(= (battery-level-full) 24)
)
(:goal (and
(visited x0y0z0)
(visited x0y0z1)
(visited x0y0z2)
(visited x0y0z3)
(visited x0y1z3)
(visited x1y1z3)
(visited x1y1z4)
(visited x1y2z4)
(= (x) 0) (= (y) 0) (= (z) 0) ))
);; end of the problem instance
