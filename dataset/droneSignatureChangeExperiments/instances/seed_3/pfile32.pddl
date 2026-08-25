;;Instance with 0x0x4 points
(define (problem grid_instance_32)
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
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d23 - dummy_2
        d24 - dummy_2
        d30 - dummy_3
        d31 - dummy_3
        d32 - dummy_3
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
        (= (battery-level) 15)
        (= (battery-level-full) 15)
        (= (factor_value bf0) 1.3501)
        (= (dummy_1_value d10) 1.37802)
        (= (dummy_1_value d11) 1.17929)
        (= (dummy_2_value d20) 4.42747)
        (= (dummy_2_value d21) 2.20768)
        (= (dummy_2_value d22) 3.49402)
        (= (dummy_2_value d23) 4.9869)
        (= (dummy_2_value d24) 2.45475)
        (= (dummy_3_value d30) 0.63111)
        (= (dummy_3_value d31) 0.71333)
        (= (dummy_3_value d32) 0.60792)
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