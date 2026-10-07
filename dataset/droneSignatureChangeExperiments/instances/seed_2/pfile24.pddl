;;Instance with 3x0x1 points
(define (problem grid_instance_24)
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
        d10 d11 d12 d13 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
        d30 - dummy_3
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

        (= (battery-level) 2)
        (= (battery-level-full) 32)

        (= (factor_value bf0) 1.30187)

        (= (dummy_1_value d10) 1.194)
		(= (dummy_1_value d11) 1.26992)
		(= (dummy_1_value d12) 1.13396)
		(= (dummy_1_value d13) 1.10678)

        (= (dummy_2_value d20) 3.5087)
		(= (dummy_2_value d21) 2.08258)
		(= (dummy_2_value d22) 2.23943)
		(= (dummy_2_value d23) 4.26188)
		(= (dummy_2_value d24) 2.5211)

        (= (dummy_3_value d30) 0.77523)
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
