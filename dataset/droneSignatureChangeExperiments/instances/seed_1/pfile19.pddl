;;Instance with 1x3x0 points
(define (problem grid_instance_19)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y1z0 - location
        x0y2z0 - location
        x0y3z0 - location
        x1y0z0 - location
        x1y1z0 - location
        x1y2z0 - location
        x1y3z0 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d12 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d23 - dummy_2
        d24 - dummy_2
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
        (= (max_x) 1)
        (= (min_y) 0)
        (= (max_y) 3)
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
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y1z0) 1)
        (= (yl x1y1z0) 1)
        (= (zl x1y1z0) 0)
        (= (xl x1y2z0) 1)
        (= (yl x1y2z0) 2)
        (= (zl x1y2z0) 0)
        (= (xl x1y3z0) 1)
        (= (yl x1y3z0) 3)
        (= (zl x1y3z0) 0)
        (= (battery-level) 8)
        (= (battery-level-full) 15)
        (= (factor_value bf0) 1.04454)
        (= (dummy_1_value d10) 1.08608)
        (= (dummy_1_value d11) 1.24712)
        (= (dummy_1_value d12) 1.39198)
        (= (dummy_2_value d20) 3.62874)
        (= (dummy_2_value d21) 4.06457)
        (= (dummy_2_value d22) 3.9855)
        (= (dummy_2_value d23) 2.77726)
        (= (dummy_2_value d24) 3.62481)
        (= (dummy_3_value d30) 0.37659)
        (= (dummy_3_value d31) 0.32174)
        (= (dummy_3_value d32) 0.17323)
        (= (dummy_3_value d33) 0.35271)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y1z0)
        (visited x0y2z0)
        (visited x0y3z0)
        (visited x1y0z0)
        (visited x1y1z0)
        (visited x1y2z0)
        (visited x1y3z0)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance