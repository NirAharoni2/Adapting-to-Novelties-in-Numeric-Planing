;;Instance with 2x1x1 points
(define (problem grid_instance_20)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y1z0 - location
        x0y1z1 - location
        x1y0z0 - location
        x1y0z1 - location
        x1y1z0 - location
        x1y1z1 - location
        x2y0z0 - location
        x2y0z1 - location
        x2y1z0 - location
        x2y1z1 - location
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
        (= (max_x) 2)
        (= (min_y) 0)
        (= (max_y) 1)
        (= (min_z) 0)
        (= (max_z) 1)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x0y0z1) 0)
        (= (yl x0y0z1) 0)
        (= (zl x0y0z1) 1)
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x0y1z1) 0)
        (= (yl x0y1z1) 1)
        (= (zl x0y1z1) 1)
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y0z1) 1)
        (= (yl x1y0z1) 0)
        (= (zl x1y0z1) 1)
        (= (xl x1y1z0) 1)
        (= (yl x1y1z0) 1)
        (= (zl x1y1z0) 0)
        (= (xl x1y1z1) 1)
        (= (yl x1y1z1) 1)
        (= (zl x1y1z1) 1)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x2y0z1) 2)
        (= (yl x2y0z1) 0)
        (= (zl x2y0z1) 1)
        (= (xl x2y1z0) 2)
        (= (yl x2y1z0) 1)
        (= (zl x2y1z0) 0)
        (= (xl x2y1z1) 2)
        (= (yl x2y1z1) 1)
        (= (zl x2y1z1) 1)
        (= (battery-level) 12)
        (= (battery-level-full) 15)
        (= (factor_value bf0) 1.32473)
        (= (dummy_1_value d10) 1.02737)
        (= (dummy_1_value d11) 1.09201)
        (= (dummy_1_value d12) 1.32784)
        (= (dummy_1_value d13) 1.3167)
        (= (dummy_2_value d20) 3.9908)
        (= (dummy_2_value d21) 2.07666)
        (= (dummy_2_value d22) 4.1678)
        (= (dummy_2_value d23) 4.93606)
        (= (dummy_2_value d24) 4.995)
        (= (dummy_3_value d30) 0.73112)
        (= (dummy_3_value d31) 0.144)
        (= (dummy_3_value d32) 0.85786)
        (= (dummy_3_value d33) 0.29731)
        (= (dummy_3_value d34) 0.68116)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y1z0)
        (visited x0y1z1)
        (visited x1y0z0)
        (visited x1y0z1)
        (visited x1y1z0)
        (visited x1y1z1)
        (visited x2y0z0)
        (visited x2y0z1)
        (visited x2y1z0)
        (visited x2y1z1)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance