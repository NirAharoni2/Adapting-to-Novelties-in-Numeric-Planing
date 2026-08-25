;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
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

        (= (sled_capacity s0) 13.112012740555583)

        (= (sled_supplies s0) 4.86545740088923)

        (= (factor_value f0) 0.7439832611360553)
		(= (factor_value f1) 0.6060075652569038)
		(= (factor_value f2) 0.7156302504266764)
		(= (factor_value f3) 0.76702727156961)

        (= (dummy_1_value d1_0) 0.9546480183232204)
		(= (dummy_1_value d1_1) 0.8302548538724911)
		(= (dummy_1_value d1_2) 0.6388362171061946)
		(= (dummy_1_value d1_3) 0.6894247522561878)

        (= (dummy_2_value d2_0) 6.034367114574318)
		(= (dummy_2_value d2_1) 9.638237138901266)

        (= (dummy_3_value d3_0) 53.307952504147096)
		(= (dummy_3_value d3_1) 58.32917970480347)
		(= (dummy_3_value d3_2) 4.050030992367354)

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

