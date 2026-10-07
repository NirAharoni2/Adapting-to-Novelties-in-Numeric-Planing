;;Instance with 0x2x2 points
(define (problem grid_instance_2)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x0y0z2 - location
		x0y1z0 - location
		x0y1z1 - location
		x0y1z2 - location
		x0y2z0 - location
		x0y2z1 - location
		x0y2z2 - location

        bf0 - battery_factor
        d10 d11 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
        d30 d31 d32 d33 d34 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 2)
        (= (min_z) 0)
        (= (max_z) 2)

        (= (xl x0y0z0) 0)
		(= (yl x0y0z0) 0)
		(= (zl x0y0z0) 0)
		(= (xl x0y0z1) 0)
		(= (yl x0y0z1) 0)
		(= (zl x0y0z1) 1)
		(= (xl x0y0z2) 0)
		(= (yl x0y0z2) 0)
		(= (zl x0y0z2) 2)
		(= (xl x0y1z0) 0)
		(= (yl x0y1z0) 1)
		(= (zl x0y1z0) 0)
		(= (xl x0y1z1) 0)
		(= (yl x0y1z1) 1)
		(= (zl x0y1z1) 1)
		(= (xl x0y1z2) 0)
		(= (yl x0y1z2) 1)
		(= (zl x0y1z2) 2)
		(= (xl x0y2z0) 0)
		(= (yl x0y2z0) 2)
		(= (zl x0y2z0) 0)
		(= (xl x0y2z1) 0)
		(= (yl x0y2z1) 2)
		(= (zl x0y2z1) 1)
		(= (xl x0y2z2) 0)
		(= (yl x0y2z2) 2)
		(= (zl x0y2z2) 2)

        (= (battery-level) 1)
        (= (battery-level-full) 42)

        (= (factor_value bf0) 1.17793)

        (= (dummy_1_value d10) 1.0529)
		(= (dummy_1_value d11) 1.38893)

        (= (dummy_2_value d20) 2.01594)
		(= (dummy_2_value d21) 4.32078)
		(= (dummy_2_value d22) 4.88038)
		(= (dummy_2_value d23) 2.49757)
		(= (dummy_2_value d24) 2.49945)

        (= (dummy_3_value d30) 0.38229)
		(= (dummy_3_value d31) 0.279)
		(= (dummy_3_value d32) 0.88851)
		(= (dummy_3_value d33) 0.66316)
		(= (dummy_3_value d34) 0.2635)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y0z1)
		(visited x0y0z2)
		(visited x0y1z0)
		(visited x0y1z1)
		(visited x0y1z2)
		(visited x0y2z0)
		(visited x0y2z1)
		(visited x0y2z2)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
