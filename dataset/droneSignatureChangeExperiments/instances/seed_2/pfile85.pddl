;;Instance with 4x0x0 points
(define (problem grid_instance_85)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x1y0z0 - location
        x2y0z0 - location
        x3y0z0 - location
        x4y0z0 - location
        bf0 - battery_factor
        d10 - dummy_1
        d20 - dummy_2
        d30 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 4)
        (= (min_y) 0)
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 0)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x3y0z0) 3)
        (= (yl x3y0z0) 0)
        (= (zl x3y0z0) 0)
        (= (xl x4y0z0) 4)
        (= (yl x4y0z0) 0)
        (= (zl x4y0z0) 0)
        (= (battery-level) 9)
        (= (battery-level-full) 16)
        (= (factor_value bf0) 1.36224)
        (= (dummy_1_value d10) 1.32052)
        (= (dummy_2_value d20) 3.38037)
        (= (dummy_3_value d30) 0.11585)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x1y0z0)
        (visited x2y0z0)
        (visited x3y0z0)
        (visited x4y0z0)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance