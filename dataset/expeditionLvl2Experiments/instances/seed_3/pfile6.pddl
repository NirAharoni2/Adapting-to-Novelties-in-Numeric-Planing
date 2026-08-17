;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.455820357359828)

        (= (sled_supplies s0) 1.3971785418700193)

        (= (factor_value f0) 0.6563353305984554)
		(= (factor_value f1) 0.6845769876384771)
		(= (factor_value f2) 0.7978107529287682)

        (= (dummy_1_value d1_0) 0.6502019866827946)
		(= (dummy_1_value d1_1) 0.6885801706644584)
		(= (dummy_1_value d1_2) 0.8861367062220604)

        (= (dummy_2_value d2_0) 1.2422908450839705)
		(= (dummy_2_value d2_1) 6.12332201863524)
		(= (dummy_2_value d2_2) 7.6165586351065855)
		(= (dummy_2_value d2_3) 3.7901502586908373)

        (= (dummy_3_value d3_0) 23.031246436525908)
		(= (dummy_3_value d3_1) 80.57695936909641)
		(= (dummy_3_value d3_2) 24.63082251288635)

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

