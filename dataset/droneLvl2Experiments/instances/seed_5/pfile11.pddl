;;Instance with 2x2x0 points
(define (problem grid_instance_11)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y1z0 - location
        x0y2z0 - location
        x1y0z0 - location
        x1y1z0 - location
        x1y2z0 - location
        x2y0z0 - location
        x2y1z0 - location
        x2y2z0 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d12 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
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
        (= (max_x) 2)
        (= (min_y) 0)
        (= (max_y) 2)
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
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x1y1z0) 1)
        (= (yl x1y1z0) 1)
        (= (zl x1y1z0) 0)
        (= (xl x1y2z0) 1)
        (= (yl x1y2z0) 2)
        (= (zl x1y2z0) 0)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x2y1z0) 2)
        (= (yl x2y1z0) 1)
        (= (zl x2y1z0) 0)
        (= (xl x2y2z0) 2)
        (= (yl x2y2z0) 2)
        (= (zl x2y2z0) 0)
        (= (battery-level) 12)
        (= (battery-level-full) 14)
        (= (factor_value bf0) 1.39045)
        (= (dummy_1_value d10) 1.38261)
        (= (dummy_1_value d11) 1.20726)
        (= (dummy_1_value d12) 1.21174)
        (= (dummy_2_value d20) 2.49852)
        (= (dummy_2_value d21) 4.50986)
        (= (dummy_3_value d30) 0.94364)
        (= (dummy_3_value d31) 0.52952)
        (= (dummy_3_value d32) 0.72228)
        (= (dummy_3_value d33) 0.74772)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y1z0)
        (visited x0y2z0)
        (visited x1y0z0)
        (visited x1y1z0)
        (visited x1y2z0)
        (visited x2y0z0)
        (visited x2y1z0)
        (visited x2y2z0)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance