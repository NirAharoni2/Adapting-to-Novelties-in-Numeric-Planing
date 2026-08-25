;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.469351050099348)

        (= (sled_supplies s0) 3.7621314159243475)

        (= (factor_value f0) 0.7203406891267365)
		(= (factor_value f1) 0.654880932537378)
		(= (factor_value f2) 0.700378001632145)

        (= (dummy_1_value d1_0) 0.5579184767535259)
		(= (dummy_1_value d1_1) 0.603094584191132)
		(= (dummy_1_value d1_2) 0.8406993422861988)
		(= (dummy_1_value d1_3) 0.5341131095081024)

        (= (dummy_2_value d2_0) 3.0485773278256554)
		(= (dummy_2_value d2_1) 3.892331491643588)
		(= (dummy_2_value d2_2) 9.357456854729115)
		(= (dummy_2_value d2_3) 9.597887394434597)
		(= (dummy_2_value d2_4) 1.404825944439228)

        (= (dummy_3_value d3_0) 81.13830176855507)
		(= (dummy_3_value d3_1) 3.305059432973973)

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

