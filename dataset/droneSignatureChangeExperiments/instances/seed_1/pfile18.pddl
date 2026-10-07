;;Instance with 4x0x0 points
(define (problem grid_instance_18)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x1y0z0 - location
		x2y0z0 - location
		x3y0z0 - location
		x4y0z0 - location

        bf0 - battery_factor
        d10 d11 d12 d13 d14 - dummy_1
        d20 d21 d22 d23 - dummy_2
        d30 d31 - dummy_3
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

        (= (battery-level) 1)
        (= (battery-level-full) 31)

        (= (factor_value bf0) 1.04622)

        (= (dummy_1_value d10) 1.06695)
		(= (dummy_1_value d11) 1.09657)
		(= (dummy_1_value d12) 1.2976)
		(= (dummy_1_value d13) 1.04113)
		(= (dummy_1_value d14) 1.36431)

        (= (dummy_2_value d20) 3.13483)
		(= (dummy_2_value d21) 4.91079)
		(= (dummy_2_value d22) 4.72767)
		(= (dummy_2_value d23) 2.88207)

        (= (dummy_3_value d30) 0.32807)
		(= (dummy_3_value d31) 0.52931)
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
