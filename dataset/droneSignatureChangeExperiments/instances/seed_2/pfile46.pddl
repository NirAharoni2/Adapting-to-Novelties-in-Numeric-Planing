;;Instance with 0x4x0 points
(define (problem grid_instance_46)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y1z0 - location
        x0y2z0 - location
        x0y3z0 - location
        x0y4z0 - location
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
        (= (max_y) 4)
        (= (min_z) 0)
        (= (max_z) 0)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x0y2z0) 0)
        (= (yl x0y2z0) 2)
        (= (zl x0y2z0) 0)
        (= (xl x0y3z0) 0)
        (= (yl x0y3z0) 3)
        (= (zl x0y3z0) 0)
        (= (xl x0y4z0) 0)
        (= (yl x0y4z0) 4)
        (= (zl x0y4z0) 0)
        (= (battery-level) 8)
        (= (battery-level-full) 12)
        (= (factor_value bf0) 1.02812)
        (= (dummy_1_value d10) 1.18408)
        (= (dummy_1_value d11) 1.28102)
        (= (dummy_1_value d12) 1.11186)
        (= (dummy_1_value d13) 1.01175)
        (= (dummy_1_value d14) 1.0167)
        (= (dummy_2_value d20) 3.94671)
        (= (dummy_2_value d21) 2.61948)
        (= (dummy_2_value d22) 2.72372)
        (= (dummy_2_value d23) 2.14575)
        (= (dummy_3_value d30) 0.23037)
        (= (dummy_3_value d31) 0.36578)
        (= (dummy_3_value d32) 0.78582)
        (= (dummy_3_value d33) 0.67734)
        (= (dummy_3_value d34) 0.58679)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y1z0)
        (visited x0y2z0)
        (visited x0y3z0)
        (visited x0y4z0)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance