;;Instance with 0x0x4 points
(define (problem grid_instance_31)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x0y0z2 - location
		x0y0z3 - location
		x0y0z4 - location

        bf0 - battery_factor
        d10 d11 d12 - dummy_1
        d20 d21 d22 - dummy_2
        d30 - dummy_3
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

        (= (battery-level) 0)
        (= (battery-level-full) 45)

        (= (factor_value bf0) 1.27509)

        (= (dummy_1_value d10) 1.26953)
		(= (dummy_1_value d11) 1.18869)
		(= (dummy_1_value d12) 1.37816)

        (= (dummy_2_value d20) 2.35374)
		(= (dummy_2_value d21) 4.0057)
		(= (dummy_2_value d22) 2.8733)

        (= (dummy_3_value d30) 0.70702)
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
