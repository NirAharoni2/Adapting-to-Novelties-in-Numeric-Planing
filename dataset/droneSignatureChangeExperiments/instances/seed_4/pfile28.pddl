;;Instance with 0x0x4 points
(define (problem grid_instance_28)
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
        d14 - dummy_1
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
        (= (battery-level) 6)
        (= (battery-level-full) 13)
        (= (factor_value bf0) 1.2844)
        (= (dummy_1_value d10) 1.01559)
        (= (dummy_1_value d11) 1.27038)
        (= (dummy_1_value d12) 1.13456)
        (= (dummy_1_value d13) 1.24069)
        (= (dummy_1_value d14) 1.05513)
        (= (dummy_2_value d20) 2.92566)
        (= (dummy_2_value d21) 3.52266)
        (= (dummy_2_value d22) 4.66626)
        (= (dummy_2_value d23) 4.47466)
        (= (dummy_2_value d24) 4.51667)
        (= (dummy_3_value d30) 0.16434)
        (= (dummy_3_value d31) 0.30352)
        (= (dummy_3_value d32) 0.3468)
        (= (dummy_3_value d33) 0.95902)
        (= (dummy_3_value d34) 0.90155)
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