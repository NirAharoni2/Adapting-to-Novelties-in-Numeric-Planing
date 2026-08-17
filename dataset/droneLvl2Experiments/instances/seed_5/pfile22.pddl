;;Instance with 2x0x2 points
(define (problem grid_instance_22)
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
        d11 - dummy_1
        d12 - dummy_1
        d13 - dummy_1
        d20 - dummy_2
        d30 - dummy_3
        d31 - dummy_3
        d32 - dummy_3
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
        (= (battery-level) 10)
        (= (battery-level-full) 16)
        (= (factor_value bf0) 1.27419)
        (= (dummy_1_value d10) 1.19578)
        (= (dummy_1_value d11) 1.14136)
        (= (dummy_1_value d12) 1.26246)
        (= (dummy_1_value d13) 1.36592)
        (= (dummy_2_value d20) 2.4147)
        (= (dummy_3_value d30) 0.36525)
        (= (dummy_3_value d31) 0.61178)
        (= (dummy_3_value d32) 0.71015)
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