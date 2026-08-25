;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.717385852910745)

        (= (sled_supplies s0) 2.451375729769509)

        (= (factor_value f0) 0.7299938743331339)
		(= (factor_value f1) 0.5976497685875479)
		(= (factor_value f2) 0.6046437100404018)
		(= (factor_value f3) 0.58538195708591)

        (= (dummy_1_value d1_0) 0.7018736284362249)
		(= (dummy_1_value d1_1) 0.584137907761029)

        (= (dummy_2_value d2_0) 1.2473437357941977)

        (= (dummy_3_value d3_0) 11.89686604037475)
		(= (dummy_3_value d3_1) 17.655059187347558)

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

