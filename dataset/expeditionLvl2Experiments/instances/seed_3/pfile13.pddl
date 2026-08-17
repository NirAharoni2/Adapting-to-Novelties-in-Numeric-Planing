;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.897763831193895)

        (= (sled_supplies s0) 3.6694125905383204)

        (= (factor_value f0) 0.5651829461741048)
		(= (factor_value f1) 0.514047212662116)

        (= (dummy_1_value d1_0) 0.6627824543946821)
		(= (dummy_1_value d1_1) 0.9844057146379881)
		(= (dummy_1_value d1_2) 0.779537598754901)
		(= (dummy_1_value d1_3) 0.9351755688420673)
		(= (dummy_1_value d1_4) 0.560725485772428)

        (= (dummy_2_value d2_0) 7.214998484464842)
		(= (dummy_2_value d2_1) 9.451557713143492)
		(= (dummy_2_value d2_2) 7.583747341935384)

        (= (dummy_3_value d3_0) 85.12938541059945)
		(= (dummy_3_value d3_1) 53.48777778040222)
		(= (dummy_3_value d3_2) 38.26652523941246)
		(= (dummy_3_value d3_3) 11.754314635990427)
		(= (dummy_3_value d3_4) 32.520610845242075)

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

