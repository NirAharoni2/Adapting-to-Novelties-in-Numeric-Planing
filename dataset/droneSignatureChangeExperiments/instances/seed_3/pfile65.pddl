;;Instance with 0x0x4 points
(define (problem grid_instance_65)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y0z2 - location
        x0y0z3 - location
        x0y0z4 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d12 - dummy_1
        d13 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d23 - dummy_2
        d24 - dummy_2
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
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 4)
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
        (= (xl x0y0z4) 0)
        (= (yl x0y0z4) 0)
        (= (zl x0y0z4) 4)
        (= (battery-level) 14)
        (= (battery-level-full) 14)
        (= (factor_value bf0) 1.12214)
        (= (dummy_1_value d10) 1.05964)
        (= (dummy_1_value d11) 1.1825)
        (= (dummy_1_value d12) 1.15357)
        (= (dummy_1_value d13) 1.30264)
        (= (dummy_2_value d20) 2.88673)
        (= (dummy_2_value d21) 4.24891)
        (= (dummy_2_value d22) 4.24273)
        (= (dummy_2_value d23) 2.90221)
        (= (dummy_2_value d24) 4.57632)
        (= (dummy_3_value d30) 0.96313)
        (= (dummy_3_value d31) 0.38521)
        (= (dummy_3_value d32) 0.85595)
        (= (dummy_3_value d33) 0.21735)
        (= (dummy_3_value d34) 0.64323)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y0z2)
        (visited x0y0z3)
        (visited x0y0z4)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance