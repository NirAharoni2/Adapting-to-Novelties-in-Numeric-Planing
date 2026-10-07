;;Instance with 0x1x3 points
(define (problem grid_instance_29)
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
        d10 d11 d12 d13 d14 - dummy_1
        d20 d21 d22 d23 - dummy_2
        d30 d31 d32 d33 - dummy_3
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

        (= (battery-level) 1)
        (= (battery-level-full) 34)

        (= (factor_value bf0) 1.3234)

        (= (dummy_1_value d10) 1.29977)
		(= (dummy_1_value d11) 1.1123)
		(= (dummy_1_value d12) 1.28803)
		(= (dummy_1_value d13) 1.23804)
		(= (dummy_1_value d14) 1.23234)

        (= (dummy_2_value d20) 4.19635)
		(= (dummy_2_value d21) 2.96146)
		(= (dummy_2_value d22) 3.19827)
		(= (dummy_2_value d23) 4.14146)

        (= (dummy_3_value d30) 0.73406)
		(= (dummy_3_value d31) 0.66893)
		(= (dummy_3_value d32) 0.97257)
		(= (dummy_3_value d33) 0.74473)
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
