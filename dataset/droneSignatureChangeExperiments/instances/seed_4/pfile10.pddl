;;Instance with 4x0x0 points
(define (problem grid_instance_10)
    (:domain drone)
    (:objects
        x0y0z0 - location
        x1y0z0 - location
        x2y0z0 - location
        x3y0z0 - location
        x4y0z0 - location
        bf0 - battery_factor
        d10 - dummy_1
        d20 - dummy_2
        d21 - dummy_2
        d22 - dummy_2
        d23 - dummy_2
        d30 - dummy_3
        d31 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 4)
        (= (min_y) 0)
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 0)
        (= (xl x0y0z0) 0)
        (= (yl x0y0z0) 0)
        (= (zl x0y0z0) 0)
        (= (xl x1y0z0) 1)
        (= (yl x1y0z0) 0)
        (= (zl x1y0z0) 0)
        (= (xl x2y0z0) 2)
        (= (yl x2y0z0) 0)
        (= (zl x2y0z0) 0)
        (= (xl x3y0z0) 3)
        (= (yl x3y0z0) 0)
        (= (zl x3y0z0) 0)
        (= (xl x4y0z0) 4)
        (= (yl x4y0z0) 0)
        (= (zl x4y0z0) 0)
        (= (battery-level) 9)
        (= (battery-level-full) 12)
        (= (factor_value bf0) 1.37197)
        (= (dummy_1_value d10) 1.22892)
        (= (dummy_2_value d20) 4.83242)
        (= (dummy_2_value d21) 2.49637)
        (= (dummy_2_value d22) 2.88861)
        (= (dummy_2_value d23) 3.41369)
        (= (dummy_3_value d30) 0.91063)
        (= (dummy_3_value d31) 0.38353)
    )
    (:goal (and
        (visited x0y0z0)
        (visited x1y0z0)
        (visited x2y0z0)
        (visited x3y0z0)
        (visited x4y0z0)
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance