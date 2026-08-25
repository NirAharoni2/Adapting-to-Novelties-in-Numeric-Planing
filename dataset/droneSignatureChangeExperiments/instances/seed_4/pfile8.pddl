;;Instance with 0x0x4 points
(define (problem grid_instance_8)
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
        (= (battery-level) 8)
        (= (battery-level-full) 13)
        (= (factor_value bf0) 1.09962)
        (= (dummy_1_value d10) 1.39905)
        (= (dummy_1_value d11) 1.04891)
        (= (dummy_1_value d12) 1.2117)
        (= (dummy_1_value d13) 1.30952)
        (= (dummy_1_value d14) 1.16373)
        (= (dummy_2_value d20) 4.96297)
        (= (dummy_2_value d21) 3.43329)
        (= (dummy_2_value d22) 2.72559)
        (= (dummy_2_value d23) 3.23187)
        (= (dummy_3_value d30) 0.13318)
        (= (dummy_3_value d31) 0.4791)
        (= (dummy_3_value d32) 0.32373)
        (= (dummy_3_value d33) 0.90037)
        (= (dummy_3_value d34) 0.84794)
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