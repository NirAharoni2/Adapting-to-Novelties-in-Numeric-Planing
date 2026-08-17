;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.9918334111021405)

        (= (sled_supplies s0) 6.2299156860814335)

        (= (factor_value f0) 0.7417506162696121)
		(= (factor_value f1) 0.8493194785611848)
		(= (factor_value f2) 0.9753460081035402)
		(= (factor_value f3) 0.7932341088314006)

        (= (dummy_1_value d1_0) 0.9290526180942023)
		(= (dummy_1_value d1_1) 0.5681423927372595)

        (= (dummy_2_value d2_0) 7.768471112792332)
		(= (dummy_2_value d2_1) 2.318996774185864)
		(= (dummy_2_value d2_2) 5.640564537298885)
		(= (dummy_2_value d2_3) 9.413102709433037)

        (= (dummy_3_value d3_0) 85.29760624037763)
		(= (dummy_3_value d3_1) 54.26541091046578)

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

