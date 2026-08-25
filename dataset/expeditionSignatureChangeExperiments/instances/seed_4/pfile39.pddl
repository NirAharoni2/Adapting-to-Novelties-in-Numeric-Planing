;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.63480685461364)

        (= (sled_supplies s0) 4.505722772723433)

        (= (factor_value f0) 0.632628964535713)
		(= (factor_value f1) 0.7029256916689968)

        (= (dummy_1_value d1_0) 0.5658668157004678)
		(= (dummy_1_value d1_1) 0.8770223890075672)
		(= (dummy_1_value d1_2) 0.958514084437323)
		(= (dummy_1_value d1_3) 0.8300685459188955)
		(= (dummy_1_value d1_4) 0.8496453989988791)

        (= (dummy_2_value d2_0) 6.549863630988964)
		(= (dummy_2_value d2_1) 3.375424458570297)

        (= (dummy_3_value d3_0) 6.697866464772723)
		(= (dummy_3_value d3_1) 97.85759203454936)

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

