;;Instance with 0x1x3 points
(define (problem grid_instance_26)
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
        d10 d11 d12 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
        d30 d31 - dummy_3
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
        (= (battery-level-full) 47)

        (= (factor_value bf0) 1.32321)

        (= (dummy_1_value d10) 1.3454)
		(= (dummy_1_value d11) 1.18134)
		(= (dummy_1_value d12) 1.15556)

        (= (dummy_2_value d20) 2.39355)
		(= (dummy_2_value d21) 2.05607)
		(= (dummy_2_value d22) 3.02481)
		(= (dummy_2_value d23) 3.71968)
		(= (dummy_2_value d24) 2.10784)

        (= (dummy_3_value d30) 0.87705)
		(= (dummy_3_value d31) 0.55582)
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
