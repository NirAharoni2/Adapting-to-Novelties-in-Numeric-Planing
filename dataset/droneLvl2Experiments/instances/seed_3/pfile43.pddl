;;Instance with 0x4x0 points
(define (problem grid_instance_43)
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
        (= (battery-level-full) 15)
        (= (factor_value bf0) 1.27202)
        (= (dummy_1_value d10) 1.37141)
        (= (dummy_1_value d11) 1.06985)
        (= (dummy_1_value d12) 1.29592)
        (= (dummy_1_value d13) 1.29358)
        (= (dummy_1_value d14) 1.33426)
        (= (dummy_2_value d20) 3.66001)
        (= (dummy_2_value d21) 4.77051)
        (= (dummy_2_value d22) 3.08848)
        (= (dummy_3_value d30) 0.47325)
        (= (dummy_3_value d31) 0.30646)
        (= (dummy_3_value d32) 0.80152)
        (= (dummy_3_value d33) 0.53255)
        (= (dummy_3_value d34) 0.34251)
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