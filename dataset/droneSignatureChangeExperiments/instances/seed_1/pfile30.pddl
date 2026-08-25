;;Instance with 1x1x2 points
(define (problem grid_instance_30)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y0z2 - location
        x0y1z0 - location
        x0y1z1 - location
        x0y1z2 - location
        x1y0z0 - location
        x1y0z1 - location
        x1y0z2 - location
        x1y1z0 - location
        x1y1z1 - location
        x1y1z2 - location
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
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 1)
        (= (min_y) 0)
        (= (max_y) 1)
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
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y0z1) 1)
        (= (yl x1y0z1) 0)
        (= (zl x1y0z1) 1)
        (= (xl x1y0z2) 1)
        (= (yl x1y0z2) 0)
        (= (zl x1y0z2) 2)
        (= (xl x1y1z0) 1)
        (= (yl x1y1z0) 1)
        (= (zl x1y1z0) 0)
        (= (xl x1y1z1) 1)
        (= (yl x1y1z1) 1)
        (= (zl x1y1z1) 1)
        (= (xl x1y1z2) 1)
        (= (yl x1y1z2) 1)
        (= (zl x1y1z2) 2)
        (= (battery-level) 8)
        (= (battery-level-full) 13)
        (= (factor_value bf0) 1.10929)
        (= (dummy_1_value d10) 1.2343)
        (= (dummy_1_value d11) 1.10035)
        (= (dummy_2_value d20) 4.05058)
        (= (dummy_2_value d21) 4.37327)
        (= (dummy_2_value d22) 4.42596)
        (= (dummy_2_value d23) 4.92085)
        (= (dummy_2_value d24) 3.63613)
        (= (dummy_3_value d30) 0.54173)
        (= (dummy_3_value d31) 0.87013)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y0z2)
        (visited x0y1z0)
        (visited x0y1z1)
        (visited x0y1z2)
        (visited x1y0z0)
        (visited x1y0z1)
        (visited x1y0z2)
        (visited x1y1z0)
        (visited x1y1z1)
        (visited x1y1z2)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance