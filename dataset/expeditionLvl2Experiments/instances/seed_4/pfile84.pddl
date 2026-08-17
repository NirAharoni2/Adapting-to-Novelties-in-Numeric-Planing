;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.913384905969485)

        (= (sled_supplies s0) 8.100986597327749)

        (= (factor_value f0) 0.5076683184234583)
		(= (factor_value f1) 0.8214198936685173)

        (= (dummy_1_value d1_0) 0.9644495322507316)
		(= (dummy_1_value d1_1) 0.7567679622791368)
		(= (dummy_1_value d1_2) 0.5401794486435109)
		(= (dummy_1_value d1_3) 0.8644484070167933)

        (= (dummy_2_value d2_0) 5.508031400531435)
		(= (dummy_2_value d2_1) 4.075595488003879)
		(= (dummy_2_value d2_2) 1.5246447876903089)

        (= (dummy_3_value d3_0) 22.987059924605997)

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

