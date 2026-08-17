;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.7234532875932205)

        (= (sled_supplies s0) 5.430275277306172)

        (= (factor_value f0) 0.7138648596793475)
		(= (factor_value f1) 0.6990779165688533)

        (= (dummy_1_value d1_0) 0.8988699439886788)
		(= (dummy_1_value d1_1) 0.9057524282459706)

        (= (dummy_2_value d2_0) 6.062164797631016)
		(= (dummy_2_value d2_1) 5.255018982673771)
		(= (dummy_2_value d2_2) 3.560133201974921)
		(= (dummy_2_value d2_3) 7.888190391661893)

        (= (dummy_3_value d3_0) 98.70175867308839)
		(= (dummy_3_value d3_1) 23.681194995691314)

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

