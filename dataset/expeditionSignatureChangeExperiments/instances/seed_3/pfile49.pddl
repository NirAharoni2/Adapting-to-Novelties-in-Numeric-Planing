;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.621890197692057)

        (= (sled_supplies s0) 4.790113795118705)

        (= (factor_value f0) 0.9563347675729648)

        (= (dummy_1_value d1_0) 0.8156797397673439)

        (= (dummy_2_value d2_0) 1.8475654306887148)
		(= (dummy_2_value d2_1) 6.940390318514184)
		(= (dummy_2_value d2_2) 6.797578921682071)
		(= (dummy_2_value d2_3) 8.934098625523662)

        (= (dummy_3_value d3_0) 23.37473418215144)
		(= (dummy_3_value d3_1) 32.94707309448335)
		(= (dummy_3_value d3_2) 65.1941259786134)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

