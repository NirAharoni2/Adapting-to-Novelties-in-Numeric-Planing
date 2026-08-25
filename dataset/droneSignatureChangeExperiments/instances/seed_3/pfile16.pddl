;;Instance with 0x4x0 points
(define (problem grid_instance_16)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y1z0 - location
        x0y2z0 - location
        x0y3z0 - location
        x0y4z0 - location
        bf0 - battery_factor
        d10 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d23 - dummy_2
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
        (= (battery-level) 16)
        (= (battery-level-full) 16)
        (= (factor_value bf0) 1.3106)
        (= (dummy_1_value d10) 1.00072)
        (= (dummy_2_value d20) 2.1645)
        (= (dummy_2_value d21) 2.38059)
        (= (dummy_2_value d22) 2.37388)
        (= (dummy_2_value d23) 2.20525)
        (= (dummy_3_value d30) 0.97722)
        (= (dummy_3_value d31) 0.869)
        (= (dummy_3_value d32) 0.17752)
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