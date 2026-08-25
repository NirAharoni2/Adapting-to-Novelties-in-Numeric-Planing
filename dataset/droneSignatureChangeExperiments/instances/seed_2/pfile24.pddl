;;Instance with 3x1x0 points
(define (problem grid_instance_24)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y1z0 - location
        x1y0z0 - location
        x1y1z0 - location
        x2y0z0 - location
        x2y1z0 - location
        x3y0z0 - location
        x3y1z0 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d12 - dummy_1
        d13 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d23 - dummy_2
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
        (= (max_x) 3)
        (= (min_y) 0)
        (= (max_y) 1)
        (= (min_z) 0)
        (= (max_z) 0)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y1z0) 1)
        (= (yl x1y1z0) 1)
        (= (zl x1y1z0) 0)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x2y1z0) 2)
        (= (yl x2y1z0) 1)
        (= (zl x2y1z0) 0)
        (= (xl x3y0z0) 3)
        (= (yl x3y0z0) 0)
        (= (zl x3y0z0) 0)
        (= (xl x3y1z0) 3)
        (= (yl x3y1z0) 1)
        (= (zl x3y1z0) 0)
        (= (battery-level) 6)
        (= (battery-level-full) 13)
        (= (factor_value bf0) 1.27027)
        (= (dummy_1_value d10) 1.06234)
        (= (dummy_1_value d11) 1.11306)
        (= (dummy_1_value d12) 1.18696)
        (= (dummy_1_value d13) 1.00073)
        (= (dummy_2_value d20) 2.10205)
        (= (dummy_2_value d21) 4.5501)
        (= (dummy_2_value d22) 3.69292)
        (= (dummy_2_value d23) 2.61325)
        (= (dummy_3_value d30) 0.70878)
        (= (dummy_3_value d31) 0.54845)
        (= (dummy_3_value d32) 0.22005)
        (= (dummy_3_value d33) 0.72066)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y1z0)
        (visited x1y0z0)
        (visited x1y1z0)
        (visited x2y0z0)
        (visited x2y1z0)
        (visited x3y0z0)
        (visited x3y1z0)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance