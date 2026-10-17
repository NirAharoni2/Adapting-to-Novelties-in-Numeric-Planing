;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 111.160114476703)

        (= (sled_supplies s0) 4.3461836116424175)

        (= (factor_value f0) 4.021624068674505)
		(= (factor_value f1) 4.309237640660921)
		(= (factor_value f2) 7.8437464978107005)
		(= (factor_value f3) 6.17476504908952)
		(= (factor_value f4) 4.970291127457812)

        (= (dummy_1_value d1_0) 0.6613785803927776)
		(= (dummy_1_value d1_1) 0.8847941599924649)
		(= (dummy_1_value d1_2) 0.5915175293128916)
		(= (dummy_1_value d1_3) 0.9468288232538172)

        (= (dummy_2_value d2_0) 5.941734877318963)

        (= (dummy_3_value d3_0) 58.46026701394402)

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

