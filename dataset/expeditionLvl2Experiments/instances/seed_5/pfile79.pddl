;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.254907758138277)

        (= (sled_supplies s0) 6.253992335888563)

        (= (factor_value f0) 0.6890565266906203)
		(= (factor_value f1) 0.6573428137234023)
		(= (factor_value f2) 0.6136419003776801)
		(= (factor_value f3) 0.5784573719370916)

        (= (dummy_1_value d1_0) 0.6662423360303369)
		(= (dummy_1_value d1_1) 0.9194497867722059)

        (= (dummy_2_value d2_0) 3.7974850269527805)
		(= (dummy_2_value d2_1) 3.946557689710484)
		(= (dummy_2_value d2_2) 3.0761760842607515)

        (= (dummy_3_value d3_0) 89.54844569369767)
		(= (dummy_3_value d3_1) 89.45879991801057)

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

