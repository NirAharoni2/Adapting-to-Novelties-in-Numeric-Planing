;;Instance with 0x2x2 points
(define (problem grid_instance_51)
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
        (= (battery-level) 8)
        (= (battery-level-full) 16)
        (= (factor_value bf0) 1.23024)
        (= (dummy_1_value d10) 1.397)
        (= (dummy_2_value d20) 4.35185)
        (= (dummy_2_value d21) 4.10875)
        (= (dummy_2_value d22) 4.23995)
        (= (dummy_2_value d23) 3.08473)
        (= (dummy_2_value d24) 4.82694)
        (= (dummy_3_value d30) 0.67915)
        (= (dummy_3_value d31) 0.46232)
        (= (dummy_3_value d32) 0.51811)
        (= (dummy_3_value d33) 0.98178)
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