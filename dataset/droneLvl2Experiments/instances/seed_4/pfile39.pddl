;;Instance with 0x1x3 points
(define (problem grid_instance_39)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y0z2 - location
        x0y0z3 - location
        x0y1z0 - location
        x0y1z1 - location
        x0y1z2 - location
        x0y1z3 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d30 - dummy_3
        d31 - dummy_3
        d32 - dummy_3
        d33 - dummy_3
        d34 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 1)
        (= (min_z) 0)
        (= (max_z) 3)
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
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x0y1z1) 0)
        (= (yl x0y1z1) 1)
        (= (zl x0y1z1) 1)
        (= (xl x0y1z2) 0)
        (= (yl x0y1z2) 1)
        (= (zl x0y1z2) 2)
        (= (xl x0y1z3) 0)
        (= (yl x0y1z3) 1)
        (= (zl x0y1z3) 3)
        (= (battery-level) 12)
        (= (battery-level-full) 15)
        (= (factor_value bf0) 1.26374)
        (= (dummy_1_value d10) 1.22899)
        (= (dummy_1_value d11) 1.13795)
        (= (dummy_2_value d20) 3.79048)
        (= (dummy_2_value d21) 4.89534)
        (= (dummy_2_value d22) 2.0964)
        (= (dummy_3_value d30) 0.23691)
        (= (dummy_3_value d31) 0.61353)
        (= (dummy_3_value d32) 0.86802)
        (= (dummy_3_value d33) 0.54488)
        (= (dummy_3_value d34) 0.84581)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y0z2)
        (visited x0y0z3)
        (visited x0y1z0)
        (visited x0y1z1)
        (visited x0y1z2)
        (visited x0y1z3)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance