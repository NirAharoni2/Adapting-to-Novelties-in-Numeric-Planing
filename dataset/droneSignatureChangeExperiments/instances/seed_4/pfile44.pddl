;;Instance with 1x3x0 points
(define (problem grid_instance_44)
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
        d20 d21 d22 d23 d24 - dummy_2
        d30 - dummy_3
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

        (= (battery-level) 4)
        (= (battery-level-full) 48)

        (= (factor_value bf0) 1.24072)

        (= (dummy_1_value d10) 1.00205)
		(= (dummy_1_value d11) 1.01726)
		(= (dummy_1_value d12) 1.10893)
		(= (dummy_1_value d13) 1.2575)
		(= (dummy_1_value d14) 1.30972)

        (= (dummy_2_value d20) 3.77858)
		(= (dummy_2_value d21) 4.89086)
		(= (dummy_2_value d22) 2.45783)
		(= (dummy_2_value d23) 3.0875)
		(= (dummy_2_value d24) 3.37101)

        (= (dummy_3_value d30) 0.987)
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
