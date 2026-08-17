;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.772202620023862)

        (= (sled_supplies s0) 0.7059411933527184)

        (= (factor_value f0) 0.5755767316527438)

        (= (dummy_1_value d1_0) 0.6391105786564173)

        (= (dummy_2_value d2_0) 5.045648181077678)

        (= (dummy_3_value d3_0) 8.040679484793046)
		(= (dummy_3_value d3_1) 67.7639357756828)
		(= (dummy_3_value d3_2) 25.111446479105854)
		(= (dummy_3_value d3_3) 29.737223404003675)

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

