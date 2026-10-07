;;Instance with 0x4x0 points
(define (problem grid_instance_32)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y1z0 - location
		x0y2z0 - location
		x0y3z0 - location
		x0y4z0 - location

        bf0 - battery_factor
        d10 d11 d12 d13 - dummy_1
        d20 d21 - dummy_2
        d30 d31 d32 d33 d34 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 4)
        (= (min_z) 0)
        (= (max_z) 0)

        (= (xl x0y0z0) 0)
		(= (yl x0y0z0) 0)
		(= (zl x0y0z0) 0)
		(= (xl x0y1z0) 0)
		(= (yl x0y1z0) 1)
		(= (zl x0y1z0) 0)
		(= (xl x0y2z0) 0)
		(= (yl x0y2z0) 2)
		(= (zl x0y2z0) 0)
		(= (xl x0y3z0) 0)
		(= (yl x0y3z0) 3)
		(= (zl x0y3z0) 0)
		(= (xl x0y4z0) 0)
		(= (yl x0y4z0) 4)
		(= (zl x0y4z0) 0)

        (= (battery-level) 4)
        (= (battery-level-full) 39)

        (= (factor_value bf0) 1.14278)

        (= (dummy_1_value d10) 1.16799)
		(= (dummy_1_value d11) 1.04872)
		(= (dummy_1_value d12) 1.08358)
		(= (dummy_1_value d13) 1.35157)

        (= (dummy_2_value d20) 2.61447)
		(= (dummy_2_value d21) 4.43168)

        (= (dummy_3_value d30) 0.91362)
		(= (dummy_3_value d31) 0.12174)
		(= (dummy_3_value d32) 0.61238)
		(= (dummy_3_value d33) 0.11189)
		(= (dummy_3_value d34) 0.36677)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y1z0)
		(visited x0y2z0)
		(visited x0y3z0)
		(visited x0y4z0)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
