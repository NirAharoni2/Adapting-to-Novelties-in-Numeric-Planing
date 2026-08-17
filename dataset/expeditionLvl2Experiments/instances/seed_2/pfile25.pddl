;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.559864800319714)

        (= (sled_supplies s0) 6.015313135089271)

        (= (factor_value f0) 0.7460514567848586)
		(= (factor_value f1) 0.5658817609404547)

        (= (dummy_1_value d1_0) 0.5582602443050595)
		(= (dummy_1_value d1_1) 0.5541177260367931)
		(= (dummy_1_value d1_2) 0.6058929406029874)
		(= (dummy_1_value d1_3) 0.5265782870949667)
		(= (dummy_1_value d1_4) 0.6076084994762251)

        (= (dummy_2_value d2_0) 4.412185095479108)

        (= (dummy_3_value d3_0) 62.64610096151387)
		(= (dummy_3_value d3_1) 86.00196584306556)
		(= (dummy_3_value d3_2) 90.51429843576108)
		(= (dummy_3_value d3_3) 72.04089447800253)
		(= (dummy_3_value d3_4) 51.201681407644045)

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

