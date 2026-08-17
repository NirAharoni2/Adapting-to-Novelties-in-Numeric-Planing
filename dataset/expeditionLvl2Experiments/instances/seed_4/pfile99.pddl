;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.952287447840366)

        (= (sled_supplies s0) 2.965665776207551)

        (= (factor_value f0) 0.9258898502452096)
		(= (factor_value f1) 0.8785790558661027)
		(= (factor_value f2) 0.6292092591347372)
		(= (factor_value f3) 0.8721404733552021)

        (= (dummy_1_value d1_0) 0.9088906418142697)
		(= (dummy_1_value d1_1) 0.6315968514709702)
		(= (dummy_1_value d1_2) 0.948543999212921)
		(= (dummy_1_value d1_3) 0.8072264636817823)

        (= (dummy_2_value d2_0) 1.5805673854971554)
		(= (dummy_2_value d2_1) 4.58118997243515)

        (= (dummy_3_value d3_0) 34.64107304213039)
		(= (dummy_3_value d3_1) 20.386214485509516)
		(= (dummy_3_value d3_2) 63.05906833633562)

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

