;;Instance with 0x3x1 points
(define (problem grid_instance_30)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x0y1z0 - location
		x0y1z1 - location
		x0y2z0 - location
		x0y2z1 - location
		x0y3z0 - location
		x0y3z1 - location

        bf0 - battery_factor
        d10 d11 d12 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
        d30 d31 d32 d33 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 3)
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
		(= (xl x0y3z0) 0)
		(= (yl x0y3z0) 3)
		(= (zl x0y3z0) 0)
		(= (xl x0y3z1) 0)
		(= (yl x0y3z1) 3)
		(= (zl x0y3z1) 1)

        (= (battery-level) 3)
        (= (battery-level-full) 30)

        (= (factor_value bf0) 1.1293)

        (= (dummy_1_value d10) 1.18476)
		(= (dummy_1_value d11) 1.07664)
		(= (dummy_1_value d12) 1.26134)

        (= (dummy_2_value d20) 2.21357)
		(= (dummy_2_value d21) 4.6072)
		(= (dummy_2_value d22) 4.60675)
		(= (dummy_2_value d23) 3.40898)
		(= (dummy_2_value d24) 3.65619)

        (= (dummy_3_value d30) 0.19921)
		(= (dummy_3_value d31) 0.83658)
		(= (dummy_3_value d32) 0.77533)
		(= (dummy_3_value d33) 0.70479)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y0z1)
		(visited x0y1z0)
		(visited x0y1z1)
		(visited x0y2z0)
		(visited x0y2z1)
		(visited x0y3z0)
		(visited x0y3z1)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
