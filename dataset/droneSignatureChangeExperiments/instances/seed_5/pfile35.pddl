;;Instance with 0x1x3 points
(define (problem grid_instance_35)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x0y0z1 - location
        x0y0z2 - location
        x0y0z3 - location
        x0y1z0 - location
        x0y1z1 - location
        x0y1z2 - location
        x0y1z3 - location
        bf0 - battery_factor
        d10 - dummy_1
        d11 - dummy_1
        d12 - dummy_1
        d13 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d23 - dummy_2
        d24 - dummy_2
        d30 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 1)
        (= (min_z) 0)
        (= (max_z) 3)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x0y0z1) 0)
        (= (yl x0y0z1) 0)
        (= (zl x0y0z1) 1)
        (= (xl x0y0z2) 0)
        (= (yl x0y0z2) 0)
        (= (zl x0y0z2) 2)
        (= (xl x0y0z3) 0)
        (= (yl x0y0z3) 0)
        (= (zl x0y0z3) 3)
        (= (xl x0y1z0) 0)
        (= (yl x0y1z0) 1)
        (= (zl x0y1z0) 0)
        (= (xl x0y1z1) 0)
        (= (yl x0y1z1) 1)
        (= (zl x0y1z1) 1)
        (= (xl x0y1z2) 0)
        (= (yl x0y1z2) 1)
        (= (zl x0y1z2) 2)
        (= (xl x0y1z3) 0)
        (= (yl x0y1z3) 1)
        (= (zl x0y1z3) 3)
        (= (battery-level) 9)
        (= (battery-level-full) 12)
        (= (factor_value bf0) 1.35844)
        (= (dummy_1_value d10) 1.26164)
        (= (dummy_1_value d11) 1.30389)
        (= (dummy_1_value d12) 1.22989)
        (= (dummy_1_value d13) 1.17687)
        (= (dummy_2_value d20) 4.4504)
        (= (dummy_2_value d21) 3.96638)
        (= (dummy_2_value d22) 4.86429)
        (= (dummy_2_value d23) 4.18406)
        (= (dummy_2_value d24) 4.10353)
        (= (dummy_3_value d30) 0.34093)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x0y0z1)
        (visited x0y0z2)
        (visited x0y0z3)
        (visited x0y1z0)
        (visited x0y1z1)
        (visited x0y1z2)
        (visited x0y1z3)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance