;;Instance with 1x2x1 points
(define (problem grid_instance_34)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x0y1z0 - location
		x0y1z1 - location
		x0y2z0 - location
		x0y2z1 - location
		x1y0z0 - location
		x1y0z1 - location
		x1y1z0 - location
		x1y1z1 - location
		x1y2z0 - location
		x1y2z1 - location

        bf0 - battery_factor
        d10 d11 d12 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
        d30 d31 d32 d33 d34 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 1)
        (= (min_y) 0)
        (= (max_y) 2)
        (= (min_z) 0)
        (= (max_z) 1)

        (= (xl x0y0z0) 0)
		(= (yl x0y0z0) 0)
		(= (zl x0y0z0) 0)
		(= (xl x0y0z1) 0)
		(= (yl x0y0z1) 0)
		(= (zl x0y0z1) 1)
		(= (xl x0y1z0) 0)
		(= (yl x0y1z0) 1)
		(= (zl x0y1z0) 0)
		(= (xl x0y1z1) 0)
		(= (yl x0y1z1) 1)
		(= (zl x0y1z1) 1)
		(= (xl x0y2z0) 0)
		(= (yl x0y2z0) 2)
		(= (zl x0y2z0) 0)
		(= (xl x0y2z1) 0)
		(= (yl x0y2z1) 2)
		(= (zl x0y2z1) 1)
		(= (xl x1y0z0) 1)
		(= (yl x1y0z0) 0)
		(= (zl x1y0z0) 0)
		(= (xl x1y0z1) 1)
		(= (yl x1y0z1) 0)
		(= (zl x1y0z1) 1)
		(= (xl x1y1z0) 1)
		(= (yl x1y1z0) 1)
		(= (zl x1y1z0) 0)
		(= (xl x1y1z1) 1)
		(= (yl x1y1z1) 1)
		(= (zl x1y1z1) 1)
		(= (xl x1y2z0) 1)
		(= (yl x1y2z0) 2)
		(= (zl x1y2z0) 0)
		(= (xl x1y2z1) 1)
		(= (yl x1y2z1) 2)
		(= (zl x1y2z1) 1)

        (= (battery-level) 4)
        (= (battery-level-full) 36)

        (= (factor_value bf0) 1.07955)

        (= (dummy_1_value d10) 1.36932)
		(= (dummy_1_value d11) 1.24033)
		(= (dummy_1_value d12) 1.20676)

        (= (dummy_2_value d20) 4.81243)
		(= (dummy_2_value d21) 4.13639)
		(= (dummy_2_value d22) 4.96276)
		(= (dummy_2_value d23) 4.10868)
		(= (dummy_2_value d24) 3.34816)

        (= (dummy_3_value d30) 0.70196)
		(= (dummy_3_value d31) 0.27763)
		(= (dummy_3_value d32) 0.57357)
		(= (dummy_3_value d33) 0.71069)
		(= (dummy_3_value d34) 0.62141)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y0z1)
		(visited x0y1z0)
		(visited x0y1z1)
		(visited x0y2z0)
		(visited x0y2z1)
		(visited x1y0z0)
		(visited x1y0z1)
		(visited x1y1z0)
		(visited x1y1z1)
		(visited x1y2z0)
		(visited x1y2z1)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
