;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.873649050653851)

        (= (sled_supplies s0) 0.24943128702854253)

        (= (factor_value f0) 0.8875087402639996)
		(= (factor_value f1) 0.7609201616985546)

        (= (dummy_1_value d1_0) 0.5133675735972211)
		(= (dummy_1_value d1_1) 0.8122877750902603)
		(= (dummy_1_value d1_2) 0.6147599546655093)
		(= (dummy_1_value d1_3) 0.920956778618981)
		(= (dummy_1_value d1_4) 0.5760495811284935)

        (= (dummy_2_value d2_0) 9.75431462051572)
		(= (dummy_2_value d2_1) 2.6880615490356305)

        (= (dummy_3_value d3_0) 20.612853171204893)
		(= (dummy_3_value d3_1) 92.66269545731235)
		(= (dummy_3_value d3_2) 12.422677545146934)
		(= (dummy_3_value d3_3) 79.89088004839597)
		(= (dummy_3_value d3_4) 29.829591992554008)

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

