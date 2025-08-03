;;Instance with 3x0x1 points
(define (problem grid_instance_68)
    (:domain domain_name)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x1y0z0 - location
        x1y0z1 - location
        x2y0z0 - location
        x2y0z1 - location
        x3y0z0 - location
        x3y0z1 - location
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 3)
        (= (min_y) 0)
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 1)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x0y0z1) 0)
        (= (yl x0y0z1) 0)
        (= (zl x0y0z1) 1)
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y0z1) 1)
        (= (yl x1y0z1) 0)
        (= (zl x1y0z1) 1)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x2y0z1) 2)
        (= (yl x2y0z1) 0)
        (= (zl x2y0z1) 1)
        (= (xl x3y0z0) 3)
        (= (yl x3y0z0) 0)
        (= (zl x3y0z0) 0)
        (= (xl x3y0z1) 3)
        (= (yl x3y0z1) 0)
        (= (zl x3y0z1) 1)
        (= (battery-level) 13)
        (= (battery-level-full) 15)
        (= (battery_factor) 4.36093)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x1y0z0)
        (visited x1y0z1)
        (visited x2y0z0)
        (visited x2y0z1)
        (visited x3y0z0)
        (visited x3y0z1)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance