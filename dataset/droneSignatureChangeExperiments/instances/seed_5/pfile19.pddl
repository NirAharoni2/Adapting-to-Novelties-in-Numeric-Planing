;;Instance with 1x2x1 points
(define (problem grid_instance_19)
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
        d10 d11 - dummy_1
        d20 d21 d22 d23 - dummy_2
        d30 - dummy_3
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

        (= (battery-level) 3)
        (= (battery-level-full) 30)

        (= (factor_value bf0) 1.09826)

        (= (dummy_1_value d10) 1.10708)
		(= (dummy_1_value d11) 1.06191)

        (= (dummy_2_value d20) 4.96648)
		(= (dummy_2_value d21) 2.87956)
		(= (dummy_2_value d22) 3.82411)
		(= (dummy_2_value d23) 3.42389)

        (= (dummy_3_value d30) 0.68039)
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
