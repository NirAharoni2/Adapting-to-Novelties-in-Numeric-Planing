;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.036451875663312)

        (= (sled_supplies s0) 5.146615346075739)

        (= (factor_value f0) 0.9144671904925791)

        (= (dummy_1_value d1_0) 0.6988986565324364)
		(= (dummy_1_value d1_1) 0.7005410759604507)
		(= (dummy_1_value d1_2) 0.8062224614964695)

        (= (dummy_2_value d2_0) 3.10176687966265)
		(= (dummy_2_value d2_1) 1.067294557379208)
		(= (dummy_2_value d2_2) 5.758315658980419)
		(= (dummy_2_value d2_3) 5.508096576015039)
		(= (dummy_2_value d2_4) 6.83955633106768)

        (= (dummy_3_value d3_0) 44.393378608529865)
		(= (dummy_3_value d3_1) 68.96479993516186)

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

