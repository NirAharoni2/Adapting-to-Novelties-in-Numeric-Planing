;;Instance with 3x1x0 points
(define (problem grid_instance_15)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y1z0 - location
		x1y0z0 - location
		x1y1z0 - location
		x2y0z0 - location
		x2y1z0 - location
		x3y0z0 - location
		x3y1z0 - location

        bf0 - battery_factor
        d10 d11 d12 d13 - dummy_1
        d20 d21 - dummy_2
        d30 d31 d32 d33 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 3)
        (= (min_y) 0)
        (= (max_y) 1)
        (= (min_z) 0)
        (= (max_z) 0)

        (= (xl x0y0z0) 0)
		(= (yl x0y0z0) 0)
		(= (zl x0y0z0) 0)
		(= (xl x0y1z0) 0)
		(= (yl x0y1z0) 1)
		(= (zl x0y1z0) 0)
		(= (xl x1y0z0) 1)
		(= (yl x1y0z0) 0)
		(= (zl x1y0z0) 0)
		(= (xl x1y1z0) 1)
		(= (yl x1y1z0) 1)
		(= (zl x1y1z0) 0)
		(= (xl x2y0z0) 2)
		(= (yl x2y0z0) 0)
		(= (zl x2y0z0) 0)
		(= (xl x2y1z0) 2)
		(= (yl x2y1z0) 1)
		(= (zl x2y1z0) 0)
		(= (xl x3y0z0) 3)
		(= (yl x3y0z0) 0)
		(= (zl x3y0z0) 0)
		(= (xl x3y1z0) 3)
		(= (yl x3y1z0) 1)
		(= (zl x3y1z0) 0)

        (= (battery-level) 1)
        (= (battery-level-full) 42)

        (= (factor_value bf0) 1.34219)

        (= (dummy_1_value d10) 1.16002)
		(= (dummy_1_value d11) 1.03088)
		(= (dummy_1_value d12) 1.3663)
		(= (dummy_1_value d13) 1.31934)

        (= (dummy_2_value d20) 3.09765)
		(= (dummy_2_value d21) 4.99876)

        (= (dummy_3_value d30) 0.4743)
		(= (dummy_3_value d31) 0.74011)
		(= (dummy_3_value d32) 0.49982)
		(= (dummy_3_value d33) 0.66573)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y1z0)
		(visited x1y0z0)
		(visited x1y1z0)
		(visited x2y0z0)
		(visited x2y1z0)
		(visited x3y0z0)
		(visited x3y1z0)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
