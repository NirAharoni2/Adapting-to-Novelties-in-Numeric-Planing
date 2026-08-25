;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.588363215698973)

        (= (sled_supplies s0) 1.9022070289292055)

        (= (factor_value f0) 0.9966367695619658)
		(= (factor_value f1) 0.6086560674065706)

        (= (dummy_1_value d1_0) 0.8105838003900683)
		(= (dummy_1_value d1_1) 0.7282378516302066)
		(= (dummy_1_value d1_2) 0.8192834600691888)
		(= (dummy_1_value d1_3) 0.8705807744893649)
		(= (dummy_1_value d1_4) 0.6364896423945066)

        (= (dummy_2_value d2_0) 6.551583837951747)
		(= (dummy_2_value d2_1) 1.195793614488919)

        (= (dummy_3_value d3_0) 36.59869604461221)
		(= (dummy_3_value d3_1) 12.467233338805256)
		(= (dummy_3_value d3_2) 4.531797800450221)
		(= (dummy_3_value d3_3) 37.13962387880225)

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

