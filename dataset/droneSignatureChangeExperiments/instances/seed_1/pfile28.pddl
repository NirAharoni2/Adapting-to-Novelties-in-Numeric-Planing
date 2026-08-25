;;Instance with 0x2x2 points
(define (problem grid_instance_28)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y0z2 - location
        x0y1z0 - location
        x0y1z1 - location
        x0y1z2 - location
        x0y2z0 - location
        x0y2z1 - location
        x0y2z2 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d12 - dummy_1
        d13 - dummy_1
        d14 - dummy_1
        d20 - dummy_2
        d30 - dummy_3
        d31 - dummy_3
        d32 - dummy_3
        d33 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 2)
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
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x0y1z1) 0)
        (= (yl x0y1z1) 1)
        (= (zl x0y1z1) 1)
        (= (xl x0y1z2) 0)
        (= (yl x0y1z2) 1)
        (= (zl x0y1z2) 2)
        (= (xl x0y2z0) 0)
        (= (yl x0y2z0) 2)
        (= (zl x0y2z0) 0)
        (= (xl x0y2z1) 0)
        (= (yl x0y2z1) 2)
        (= (zl x0y2z1) 1)
        (= (xl x0y2z2) 0)
        (= (yl x0y2z2) 2)
        (= (zl x0y2z2) 2)
        (= (battery-level) 8)
        (= (battery-level-full) 14)
        (= (factor_value bf0) 1.34039)
        (= (dummy_1_value d10) 1.0964)
        (= (dummy_1_value d11) 1.3404)
        (= (dummy_1_value d12) 1.376)
        (= (dummy_1_value d13) 1.36137)
        (= (dummy_1_value d14) 1.1589)
        (= (dummy_2_value d20) 4.73025)
        (= (dummy_3_value d30) 0.49432)
        (= (dummy_3_value d31) 0.66016)
        (= (dummy_3_value d32) 0.53917)
        (= (dummy_3_value d33) 0.29081)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y0z2)
        (visited x0y1z0)
        (visited x0y1z1)
        (visited x0y1z2)
        (visited x0y2z0)
        (visited x0y2z1)
        (visited x0y2z2)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance