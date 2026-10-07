;;Instance with 0x1x3 points
(define (problem grid_instance_44)
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
        d20 d21 d22 d23 d24 - dummy_2
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

        (= (battery-level) 2)
        (= (battery-level-full) 41)

        (= (factor_value bf0) 1.16034)

        (= (dummy_1_value d10) 1.05722)

        (= (dummy_2_value d20) 4.49504)
		(= (dummy_2_value d21) 3.47034)
		(= (dummy_2_value d22) 2.11323)
		(= (dummy_2_value d23) 2.50867)
		(= (dummy_2_value d24) 2.29616)

        (= (dummy_3_value d30) 0.74592)
		(= (dummy_3_value d31) 0.91016)
		(= (dummy_3_value d32) 0.27939)
		(= (dummy_3_value d33) 0.81733)
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
