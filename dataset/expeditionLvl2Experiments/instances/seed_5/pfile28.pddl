;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.60342950669448)

        (= (sled_supplies s0) 2.463971078861374)

        (= (factor_value f0) 0.5715270755545279)
		(= (factor_value f1) 0.915839505338401)

        (= (dummy_1_value d1_0) 0.7450565039425079)
		(= (dummy_1_value d1_1) 0.5188720043516504)
		(= (dummy_1_value d1_2) 0.584778027225253)

        (= (dummy_2_value d2_0) 1.8884806467777326)
		(= (dummy_2_value d2_1) 7.45922596404724)
		(= (dummy_2_value d2_2) 9.101635190009084)

        (= (dummy_3_value d3_0) 20.732384404918157)
		(= (dummy_3_value d3_1) 79.90664270334018)

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

