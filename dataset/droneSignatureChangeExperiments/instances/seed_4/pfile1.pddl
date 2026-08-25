;;Instance with 0x3x1 points
(define (problem grid_instance_1)
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
        d12 - dummy_1
        d13 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d30 - dummy_3
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
        (= (battery-level) 8)
        (= (battery-level-full) 14)
        (= (factor_value bf0) 1.02661)
        (= (dummy_1_value d10) 1.16064)
        (= (dummy_1_value d11) 1.36718)
        (= (dummy_1_value d12) 1.32018)
        (= (dummy_1_value d13) 1.30607)
        (= (dummy_2_value d20) 2.66578)
        (= (dummy_2_value d21) 3.61004)
        (= (dummy_3_value d30) 0.34901)
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