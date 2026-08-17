;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.2114086656011605)

        (= (sled_supplies s0) 1.4430877096653603)

        (= (factor_value f0) 0.9828628537811603)
		(= (factor_value f1) 0.8661199588744153)

        (= (dummy_1_value d1_0) 0.6038145803675652)
		(= (dummy_1_value d1_1) 0.6518926450691225)

        (= (dummy_2_value d2_0) 2.5562992474700654)
		(= (dummy_2_value d2_1) 2.5146702022062466)
		(= (dummy_2_value d2_2) 5.3467947490258645)

        (= (dummy_3_value d3_0) 21.702819469022693)
		(= (dummy_3_value d3_1) 81.26926034249304)
		(= (dummy_3_value d3_2) 37.111715125489724)

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

