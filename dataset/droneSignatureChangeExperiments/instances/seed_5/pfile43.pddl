;;Instance with 0x4x0 points
(define (problem grid_instance_43)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y1z0 - location
		x0y2z0 - location
		x0y3z0 - location
		x0y4z0 - location

        bf0 - battery_factor
        d10 - dummy_1
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

        (= (battery-level) 1)
        (= (battery-level-full) 31)

        (= (factor_value bf0) 1.1928)

        (= (dummy_1_value d10) 1.35272)

        (= (dummy_2_value d20) 3.17815)
		(= (dummy_2_value d21) 2.64686)
		(= (dummy_2_value d22) 2.83113)
		(= (dummy_2_value d23) 2.60347)
		(= (dummy_2_value d24) 3.6873)

        (= (dummy_3_value d30) 0.42129)
		(= (dummy_3_value d31) 0.77597)
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
