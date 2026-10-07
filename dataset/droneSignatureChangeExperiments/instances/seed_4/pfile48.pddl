;;Instance with 0x0x4 points
(define (problem grid_instance_48)
    (:domain drone)
    (:objects
        x0y0z0 - location
		x0y0z1 - location
		x0y0z2 - location
		x0y0z3 - location
		x0y0z4 - location

        bf0 - battery_factor
        d10 d11 d12 - dummy_1
        d20 d21 d22 d23 d24 - dummy_2
        d30 d31 d32 - dummy_3
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) 0)
        (= (min_y) 0)
        (= (max_y) 0)
        (= (min_z) 0)
        (= (max_z) 4)

        (= (xl x0y0z0) 0)
		(= (yl x0y0z0) 0)
		(= (zl x0y0z0) 0)
		(= (xl x0y0z1) 0)
		(= (yl x0y0z1) 0)
		(= (zl x0y0z1) 1)
		(= (xl x0y0z2) 0)
		(= (yl x0y0z2) 0)
		(= (zl x0y0z2) 2)
		(= (xl x0y0z3) 0)
		(= (yl x0y0z3) 0)
		(= (zl x0y0z3) 3)
		(= (xl x0y0z4) 0)
		(= (yl x0y0z4) 0)
		(= (zl x0y0z4) 4)

        (= (battery-level) 1)
        (= (battery-level-full) 47)

        (= (factor_value bf0) 1.35134)

        (= (dummy_1_value d10) 1.05305)
		(= (dummy_1_value d11) 1.13857)
		(= (dummy_1_value d12) 1.03866)

        (= (dummy_2_value d20) 3.13564)
		(= (dummy_2_value d21) 2.64334)
		(= (dummy_2_value d22) 3.05566)
		(= (dummy_2_value d23) 3.72104)
		(= (dummy_2_value d24) 3.65829)

        (= (dummy_3_value d30) 0.18216)
		(= (dummy_3_value d31) 0.2419)
		(= (dummy_3_value d32) 0.50399)
    )
    (:goal (and
        (visited x0y0z0)
		(visited x0y0z1)
		(visited x0y0z2)
		(visited x0y0z3)
		(visited x0y0z4)

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
