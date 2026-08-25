;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.641526158210283)

        (= (sled_supplies s0) 1.5427668063633466)

        (= (factor_value f0) 0.5885677923020339)

        (= (dummy_1_value d1_0) 0.5215780902582614)

        (= (dummy_2_value d2_0) 5.6721516542940895)
		(= (dummy_2_value d2_1) 8.444425697482039)
		(= (dummy_2_value d2_2) 7.399056704706509)
		(= (dummy_2_value d2_3) 1.350716410634203)
		(= (dummy_2_value d2_4) 7.083642256573586)

        (= (dummy_3_value d3_0) 34.302769514748064)
		(= (dummy_3_value d3_1) 60.570065073205114)
		(= (dummy_3_value d3_2) 14.644684836077172)

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

