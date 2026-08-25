;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.386927810859438)

        (= (sled_supplies s0) 0.4977719443931172)

        (= (factor_value f0) 0.7286901003222923)

        (= (dummy_1_value d1_0) 0.5832485910415041)
		(= (dummy_1_value d1_1) 0.7210044855974824)
		(= (dummy_1_value d1_2) 0.6459935808966367)
		(= (dummy_1_value d1_3) 0.9472866026083355)

        (= (dummy_2_value d2_0) 9.295682068663623)
		(= (dummy_2_value d2_1) 4.977968364332173)
		(= (dummy_2_value d2_2) 6.7565820138390125)

        (= (dummy_3_value d3_0) 93.03457878552666)
		(= (dummy_3_value d3_1) 33.29643789484723)

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

