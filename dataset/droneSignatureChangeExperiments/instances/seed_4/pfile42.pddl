;;Instance with 2x0x2 points
(define (problem grid_instance_42)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y0z2 - location
        x1y0z0 - location
        x1y0z1 - location
        x1y0z2 - location
        x2y0z0 - location
        x2y0z1 - location
        x2y0z2 - location
        bf0 - battery_factor
        d10 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d30 - dummy_3
        d31 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 2)
        (= (min_y) 0)
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 2)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x0y0z1) 0)
        (= (yl x0y0z1) 0)
        (= (zl x0y0z1) 1)
        (= (xl x0y0z2) 0)
        (= (yl x0y0z2) 0)
        (= (zl x0y0z2) 2)
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y0z1) 1)
        (= (yl x1y0z1) 0)
        (= (zl x1y0z1) 1)
        (= (xl x1y0z2) 1)
        (= (yl x1y0z2) 0)
        (= (zl x1y0z2) 2)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x2y0z1) 2)
        (= (yl x2y0z1) 0)
        (= (zl x2y0z1) 1)
        (= (xl x2y0z2) 2)
        (= (yl x2y0z2) 0)
        (= (zl x2y0z2) 2)
        (= (battery-level) 8)
        (= (battery-level-full) 15)
        (= (factor_value bf0) 1.33829)
        (= (dummy_1_value d10) 1.38212)
        (= (dummy_2_value d20) 4.45516)
        (= (dummy_2_value d21) 2.60584)
        (= (dummy_2_value d22) 4.75466)
        (= (dummy_3_value d30) 0.93057)
        (= (dummy_3_value d31) 0.99873)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y0z2)
        (visited x1y0z0)
        (visited x1y0z1)
        (visited x1y0z2)
        (visited x2y0z0)
        (visited x2y0z1)
        (visited x2y0z2)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance