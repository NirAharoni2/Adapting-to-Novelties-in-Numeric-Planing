;;Instance with 0x2x2 points
(define (problem grid_instance_72)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y0z2 - location
        x0y1z0 - location
        x0y1z1 - location
        x0y1z2 - location
        x0y2z0 - location
        x0y2z1 - location
        x0y2z2 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d12 - dummy_1
        d13 - dummy_1
        d20 - dummy_2
        d30 - dummy_3
        d31 - dummy_3
        d32 - dummy_3
        d33 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 2)
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
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x0y1z1) 0)
        (= (yl x0y1z1) 1)
        (= (zl x0y1z1) 1)
        (= (xl x0y1z2) 0)
        (= (yl x0y1z2) 1)
        (= (zl x0y1z2) 2)
        (= (xl x0y2z0) 0)
        (= (yl x0y2z0) 2)
        (= (zl x0y2z0) 0)
        (= (xl x0y2z1) 0)
        (= (yl x0y2z1) 2)
        (= (zl x0y2z1) 1)
        (= (xl x0y2z2) 0)
        (= (yl x0y2z2) 2)
        (= (zl x0y2z2) 2)
        (= (battery-level) 7)
        (= (battery-level-full) 15)
        (= (factor_value bf0) 1.33297)
        (= (dummy_1_value d10) 1.07346)
        (= (dummy_1_value d11) 1.10967)
        (= (dummy_1_value d12) 1.15551)
        (= (dummy_1_value d13) 1.20469)
        (= (dummy_2_value d20) 3.29705)
        (= (dummy_3_value d30) 0.66579)
        (= (dummy_3_value d31) 0.69386)
        (= (dummy_3_value d32) 0.49259)
        (= (dummy_3_value d33) 0.18733)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y0z2)
        (visited x0y1z0)
        (visited x0y1z1)
        (visited x0y1z2)
        (visited x0y2z0)
        (visited x0y2z1)
        (visited x0y2z2)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance