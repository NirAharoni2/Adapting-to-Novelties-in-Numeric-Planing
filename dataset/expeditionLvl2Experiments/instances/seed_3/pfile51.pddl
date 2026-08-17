;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.518533116397531)

        (= (sled_supplies s0) 7.496886016661271)

        (= (factor_value f0) 0.7467618952370279)
		(= (factor_value f1) 0.9268874049785393)
		(= (factor_value f2) 0.5918582596732965)
		(= (factor_value f3) 0.5517949720384228)
		(= (factor_value f4) 0.7284014900018667)

        (= (dummy_1_value d1_0) 0.9640932564198131)
		(= (dummy_1_value d1_1) 0.7506227172804921)

        (= (dummy_2_value d2_0) 8.580006375220123)
		(= (dummy_2_value d2_1) 3.8386893695460906)
		(= (dummy_2_value d2_2) 7.792955915178425)
		(= (dummy_2_value d2_3) 3.9427926278771013)

        (= (dummy_3_value d3_0) 25.44280594623296)

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

