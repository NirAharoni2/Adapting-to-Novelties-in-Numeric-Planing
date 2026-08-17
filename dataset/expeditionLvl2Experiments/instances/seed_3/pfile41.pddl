;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.856878696379473)

        (= (sled_supplies s0) 4.335510266694455)

        (= (factor_value f0) 0.518942568241819)
		(= (factor_value f1) 0.6583704587720127)

        (= (dummy_1_value d1_0) 0.805282676192131)
		(= (dummy_1_value d1_1) 0.7775886143816546)
		(= (dummy_1_value d1_2) 0.5177757409643926)
		(= (dummy_1_value d1_3) 0.7086809473120568)

        (= (dummy_2_value d2_0) 4.720133713048245)
		(= (dummy_2_value d2_1) 9.094319073210317)
		(= (dummy_2_value d2_2) 5.4568283860964195)
		(= (dummy_2_value d2_3) 9.611096470057605)

        (= (dummy_3_value d3_0) 74.00930444802097)
		(= (dummy_3_value d3_1) 70.12081812395694)
		(= (dummy_3_value d3_2) 12.398251872948437)

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

