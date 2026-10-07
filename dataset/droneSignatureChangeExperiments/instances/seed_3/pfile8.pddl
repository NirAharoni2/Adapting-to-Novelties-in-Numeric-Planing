;;Instance with 1x0x3 points
(define (problem grid_instance_8)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x0y0z2 - location
		x0y0z3 - location
		x1y0z0 - location
		x1y0z1 - location
		x1y0z2 - location
		x1y0z3 - location

        bf0 - battery_factor
        d10 d11 d12 d13 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
        d30 d31 d32 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 1)
        (= (min_y) 0)
        (= (max_y) 0)
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
		(= (xl x1y0z0) 1)
		(= (yl x1y0z0) 0)
		(= (zl x1y0z0) 0)
		(= (xl x1y0z1) 1)
		(= (yl x1y0z1) 0)
		(= (zl x1y0z1) 1)
		(= (xl x1y0z2) 1)
		(= (yl x1y0z2) 0)
		(= (zl x1y0z2) 2)
		(= (xl x1y0z3) 1)
		(= (yl x1y0z3) 0)
		(= (zl x1y0z3) 3)

        (= (battery-level) 2)
        (= (battery-level-full) 47)

        (= (factor_value bf0) 1.00802)

        (= (dummy_1_value d10) 1.24632)
		(= (dummy_1_value d11) 1.25287)
		(= (dummy_1_value d12) 1.02403)
		(= (dummy_1_value d13) 1.25094)

        (= (dummy_2_value d20) 3.39875)
		(= (dummy_2_value d21) 4.03784)
		(= (dummy_2_value d22) 3.05773)
		(= (dummy_2_value d23) 4.12085)
		(= (dummy_2_value d24) 4.2141)

        (= (dummy_3_value d30) 0.11996)
		(= (dummy_3_value d31) 0.15452)
		(= (dummy_3_value d32) 0.70842)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y0z1)
		(visited x0y0z2)
		(visited x0y0z3)
		(visited x1y0z0)
		(visited x1y0z1)
		(visited x1y0z2)
		(visited x1y0z3)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
