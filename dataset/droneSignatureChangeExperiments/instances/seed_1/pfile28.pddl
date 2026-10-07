;;Instance with 3x0x1 points
(define (problem grid_instance_28)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x1y0z0 - location
		x1y0z1 - location
		x2y0z0 - location
		x2y0z1 - location
		x3y0z0 - location
		x3y0z1 - location

        bf0 - battery_factor
        d10 d11 d12 d13 d14 - dummy_1
        d20 d21 d22 - dummy_2
        d30 d31 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 3)
        (= (min_y) 0)
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 1)

        (= (xl x0y0z0) 0)
		(= (yl x0y0z0) 0)
		(= (zl x0y0z0) 0)
		(= (xl x0y0z1) 0)
		(= (yl x0y0z1) 0)
		(= (zl x0y0z1) 1)
		(= (xl x1y0z0) 1)
		(= (yl x1y0z0) 0)
		(= (zl x1y0z0) 0)
		(= (xl x1y0z1) 1)
		(= (yl x1y0z1) 0)
		(= (zl x1y0z1) 1)
		(= (xl x2y0z0) 2)
		(= (yl x2y0z0) 0)
		(= (zl x2y0z0) 0)
		(= (xl x2y0z1) 2)
		(= (yl x2y0z1) 0)
		(= (zl x2y0z1) 1)
		(= (xl x3y0z0) 3)
		(= (yl x3y0z0) 0)
		(= (zl x3y0z0) 0)
		(= (xl x3y0z1) 3)
		(= (yl x3y0z1) 0)
		(= (zl x3y0z1) 1)

        (= (battery-level) 0)
        (= (battery-level-full) 37)

        (= (factor_value bf0) 1.20465)

        (= (dummy_1_value d10) 1.31699)
		(= (dummy_1_value d11) 1.08154)
		(= (dummy_1_value d12) 1.11949)
		(= (dummy_1_value d13) 1.11983)
		(= (dummy_1_value d14) 1.22093)

        (= (dummy_2_value d20) 2.49554)
		(= (dummy_2_value d21) 4.10383)
		(= (dummy_2_value d22) 3.39434)

        (= (dummy_3_value d30) 0.17648)
		(= (dummy_3_value d31) 0.21092)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y0z1)
		(visited x1y0z0)
		(visited x1y0z1)
		(visited x2y0z0)
		(visited x2y0z1)
		(visited x3y0z0)
		(visited x3y0z1)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
