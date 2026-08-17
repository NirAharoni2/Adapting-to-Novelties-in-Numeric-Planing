;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.689622375334402)

        (= (sled_supplies s0) 0.8979093929027694)

        (= (factor_value f0) 0.6095497322653853)

        (= (dummy_1_value d1_0) 0.7914739186364419)
		(= (dummy_1_value d1_1) 0.8077082456043438)
		(= (dummy_1_value d1_2) 0.5497238221911114)
		(= (dummy_1_value d1_3) 0.8657151406584649)

        (= (dummy_2_value d2_0) 5.3077620439707065)
		(= (dummy_2_value d2_1) 7.270426540270306)
		(= (dummy_2_value d2_2) 5.877987876114161)
		(= (dummy_2_value d2_3) 8.022806195981182)
		(= (dummy_2_value d2_4) 1.994380300990654)

        (= (dummy_3_value d3_0) 22.856615055819557)
		(= (dummy_3_value d3_1) 68.34169536358621)

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

