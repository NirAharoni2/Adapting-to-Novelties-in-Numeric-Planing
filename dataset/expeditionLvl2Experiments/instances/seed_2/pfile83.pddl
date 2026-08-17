;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.780431054859694)

        (= (sled_supplies s0) 4.507517679059655)

        (= (factor_value f0) 0.8871135761532638)
		(= (factor_value f1) 0.5927845670500376)

        (= (dummy_1_value d1_0) 0.9747070803113637)
		(= (dummy_1_value d1_1) 0.7280999025089515)
		(= (dummy_1_value d1_2) 0.5401791307537809)
		(= (dummy_1_value d1_3) 0.9609644561594644)
		(= (dummy_1_value d1_4) 0.6528964523958496)

        (= (dummy_2_value d2_0) 9.061856551863372)

        (= (dummy_3_value d3_0) 21.567238258746748)
		(= (dummy_3_value d3_1) 8.179720982925375)

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

