;;Instance with 3x1x0 points
(define (problem grid_instance_65)
    (:domain domain_name)
    (:objects
        x0y0z0 - location
        x0y1z0 - location
        x1y0z0 - location
        x1y1z0 - location
        x2y0z0 - location
        x2y1z0 - location
        x3y0z0 - location
        x3y1z0 - location
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 3)
        (= (min_y) 0)
        (= (max_y) 1)
        (= (min_z) 0)
        (= (max_z) 0)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y1z0) 1)
        (= (yl x1y1z0) 1)
        (= (zl x1y1z0) 0)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x2y1z0) 2)
        (= (yl x2y1z0) 1)
        (= (zl x2y1z0) 0)
        (= (xl x3y0z0) 3)
        (= (yl x3y0z0) 0)
        (= (zl x3y0z0) 0)
        (= (xl x3y1z0) 3)
        (= (yl x3y1z0) 1)
        (= (zl x3y1z0) 0)
        (= (battery-level) 7)
        (= (battery-level-full) 15)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y1z0)
        (visited x1y0z0)
        (visited x1y1z0)
        (visited x2y0z0)
        (visited x2y1z0)
        (visited x3y0z0)
        (visited x3y1z0)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance