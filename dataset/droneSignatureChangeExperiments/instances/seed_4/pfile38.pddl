;;Instance with 0x0x4 points
(define (problem grid_instance_38)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x0y0z2 - location
		x0y0z3 - location
		x0y0z4 - location

        bf0 - battery_factor
        d10 d11 d12 d13 d14 - dummy_1
        d20 d21 d22 - dummy_2
        d30 d31 d32 d33 d34 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 4)

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
		(= (xl x0y0z4) 0)
		(= (yl x0y0z4) 0)
		(= (zl x0y0z4) 4)

        (= (battery-level) 4)
        (= (battery-level-full) 35)

        (= (factor_value bf0) 1.00783)

        (= (dummy_1_value d10) 1.26439)
		(= (dummy_1_value d11) 1.15312)
		(= (dummy_1_value d12) 1.09254)
		(= (dummy_1_value d13) 1.23412)
		(= (dummy_1_value d14) 1.24866)

        (= (dummy_2_value d20) 2.40192)
		(= (dummy_2_value d21) 3.81546)
		(= (dummy_2_value d22) 2.70054)

        (= (dummy_3_value d30) 0.76596)
		(= (dummy_3_value d31) 0.58686)
		(= (dummy_3_value d32) 0.43475)
		(= (dummy_3_value d33) 0.75696)
		(= (dummy_3_value d34) 0.93548)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y0z1)
		(visited x0y0z2)
		(visited x0y0z3)
		(visited x0y0z4)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
