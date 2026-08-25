;;Instance with 0x3x1 points
(define (problem grid_instance_12)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y1z0 - location
        x0y1z1 - location
        x0y2z0 - location
        x0y2z1 - location
        x0y3z0 - location
        x0y3z1 - location
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
        (= (max_y) 3)
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
        (= (xl x0y2z0) 0)
        (= (yl x0y2z0) 2)
        (= (zl x0y2z0) 0)
        (= (xl x0y2z1) 0)
        (= (yl x0y2z1) 2)
        (= (zl x0y2z1) 1)
        (= (xl x0y3z0) 0)
        (= (yl x0y3z0) 3)
        (= (zl x0y3z0) 0)
        (= (xl x0y3z1) 0)
        (= (yl x0y3z1) 3)
        (= (zl x0y3z1) 1)
        (= (battery-level) 11)
        (= (battery-level-full) 16)
        (= (factor_value bf0) 1.01497)
        (= (dummy_1_value d10) 1.08016)
        (= (dummy_1_value d11) 1.03961)
        (= (dummy_2_value d20) 3.72015)
        (= (dummy_2_value d21) 4.6897)
        (= (dummy_2_value d22) 3.77423)
        (= (dummy_2_value d23) 3.47705)
        (= (dummy_2_value d24) 4.81386)
        (= (dummy_3_value d30) 0.45105)
        (= (dummy_3_value d31) 0.5537)
        (= (dummy_3_value d32) 0.11548)
        (= (dummy_3_value d33) 0.65092)
        (= (dummy_3_value d34) 0.46209)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y1z0)
        (visited x0y1z1)
        (visited x0y2z0)
        (visited x0y2z1)
        (visited x0y3z0)
        (visited x0y3z1)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance