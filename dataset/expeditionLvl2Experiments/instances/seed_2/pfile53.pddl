;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.102175791442017)

        (= (sled_supplies s0) 4.121732966300886)

        (= (factor_value f0) 0.8099712914191304)
		(= (factor_value f1) 0.7001375351550121)
		(= (factor_value f2) 0.955159178813604)

        (= (dummy_1_value d1_0) 0.5255484508570127)
		(= (dummy_1_value d1_1) 0.8915153573848543)
		(= (dummy_1_value d1_2) 0.5974785259153412)
		(= (dummy_1_value d1_3) 0.661940023074769)
		(= (dummy_1_value d1_4) 0.6462859948446381)

        (= (dummy_2_value d2_0) 9.615784147000172)
		(= (dummy_2_value d2_1) 6.813186067471984)
		(= (dummy_2_value d2_2) 5.207130491871679)

        (= (dummy_3_value d3_0) 19.241272272481606)
		(= (dummy_3_value d3_1) 5.718481835459545)
		(= (dummy_3_value d3_2) 37.37364296991702)
		(= (dummy_3_value d3_3) 97.43292884249996)
		(= (dummy_3_value d3_4) 44.99809749546428)

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

