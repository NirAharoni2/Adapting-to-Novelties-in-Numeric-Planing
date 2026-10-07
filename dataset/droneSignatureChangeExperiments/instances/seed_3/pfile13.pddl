;;Instance with 1x3x0 points
(define (problem grid_instance_13)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y1z0 - location
		x0y2z0 - location
		x0y3z0 - location
		x1y0z0 - location
		x1y1z0 - location
		x1y2z0 - location
		x1y3z0 - location

        bf0 - battery_factor
        d10 d11 d12 d13 d14 - dummy_1
        d20 d21 d22 - dummy_2
        d30 d31 d32 d33 d34 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 1)
        (= (min_y) 0)
        (= (max_y) 3)
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
		(= (xl x1y0z0) 1)
		(= (yl x1y0z0) 0)
		(= (zl x1y0z0) 0)
		(= (xl x1y1z0) 1)
		(= (yl x1y1z0) 1)
		(= (zl x1y1z0) 0)
		(= (xl x1y2z0) 1)
		(= (yl x1y2z0) 2)
		(= (zl x1y2z0) 0)
		(= (xl x1y3z0) 1)
		(= (yl x1y3z0) 3)
		(= (zl x1y3z0) 0)

        (= (battery-level) 0)
        (= (battery-level-full) 37)

        (= (factor_value bf0) 1.13643)

        (= (dummy_1_value d10) 1.09099)
		(= (dummy_1_value d11) 1.02723)
		(= (dummy_1_value d12) 1.23547)
		(= (dummy_1_value d13) 1.1148)
		(= (dummy_1_value d14) 1.32408)

        (= (dummy_2_value d20) 2.13523)
		(= (dummy_2_value d21) 4.71083)
		(= (dummy_2_value d22) 4.08112)

        (= (dummy_3_value d30) 0.93147)
		(= (dummy_3_value d31) 0.90691)
		(= (dummy_3_value d32) 0.90971)
		(= (dummy_3_value d33) 0.61926)
		(= (dummy_3_value d34) 0.11183)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y1z0)
		(visited x0y2z0)
		(visited x0y3z0)
		(visited x1y0z0)
		(visited x1y1z0)
		(visited x1y2z0)
		(visited x1y3z0)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
