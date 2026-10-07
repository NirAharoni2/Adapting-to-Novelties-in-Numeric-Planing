;;Instance with 1x0x3 points
(define (problem grid_instance_44)
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
        d10 d11 d12 - dummy_1
        d20 d21 - dummy_2
        d30 d31 d32 d33 - dummy_3
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

        (= (battery-level) 5)
        (= (battery-level-full) 45)

        (= (factor_value bf0) 1.15588)

        (= (dummy_1_value d10) 1.25243)
		(= (dummy_1_value d11) 1.38784)
		(= (dummy_1_value d12) 1.25664)

        (= (dummy_2_value d20) 2.72928)
		(= (dummy_2_value d21) 2.18055)

        (= (dummy_3_value d30) 0.94165)
		(= (dummy_3_value d31) 0.63145)
		(= (dummy_3_value d32) 0.41465)
		(= (dummy_3_value d33) 0.64482)
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
