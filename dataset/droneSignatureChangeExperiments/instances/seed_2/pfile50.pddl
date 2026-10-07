;;Instance with 4x0x0 points
(define (problem grid_instance_50)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x1y0z0 - location
		x2y0z0 - location
		x3y0z0 - location
		x4y0z0 - location

        bf0 - battery_factor
        d10 d11 d12 d13 d14 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
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

        (= (battery-level) 3)
        (= (battery-level-full) 38)

        (= (factor_value bf0) 1.01023)

        (= (dummy_1_value d10) 1.13616)
		(= (dummy_1_value d11) 1.33511)
		(= (dummy_1_value d12) 1.00329)
		(= (dummy_1_value d13) 1.26899)
		(= (dummy_1_value d14) 1.39967)

        (= (dummy_2_value d20) 4.14601)
		(= (dummy_2_value d21) 4.58647)
		(= (dummy_2_value d22) 2.23019)
		(= (dummy_2_value d23) 3.62096)
		(= (dummy_2_value d24) 3.82885)

        (= (dummy_3_value d30) 0.49199)
		(= (dummy_3_value d31) 0.47747)
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
