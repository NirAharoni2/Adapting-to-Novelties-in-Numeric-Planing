;;Instance with 0x1x3 points
(define (problem grid_instance_32)
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
        d10 d11 d12 d13 - dummy_1
        d20 - dummy_2
        d30 d31 d32 - dummy_3
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
        (= (battery-level-full) 36)

        (= (factor_value bf0) 1.00318)

        (= (dummy_1_value d10) 1.22803)
		(= (dummy_1_value d11) 1.08149)
		(= (dummy_1_value d12) 1.0374)
		(= (dummy_1_value d13) 1.20763)

        (= (dummy_2_value d20) 2.28598)

        (= (dummy_3_value d30) 0.81779)
		(= (dummy_3_value d31) 0.38449)
		(= (dummy_3_value d32) 0.88232)
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
