;;Instance with 1x1x2 points
(define (problem grid_instance_29)
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
        (= (factor_value bf0) 1.09219)
        (= (dummy_1_value d10) 1.03128)
        (= (dummy_1_value d11) 1.16043)
        (= (dummy_2_value d20) 4.92078)
        (= (dummy_3_value d30) 0.42783)
        (= (dummy_3_value d31) 0.38066)
        (= (dummy_3_value d32) 0.52123)
        (= (dummy_3_value d33) 0.35483)
        (= (dummy_3_value d34) 0.75911)
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