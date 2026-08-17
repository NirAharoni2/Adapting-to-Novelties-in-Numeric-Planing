;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.2302449813813965)

        (= (sled_supplies s0) 4.34432664205572)

        (= (factor_value f0) 0.7876278538940626)

        (= (dummy_1_value d1_0) 0.8711688123588655)
		(= (dummy_1_value d1_1) 0.9392285593737654)
		(= (dummy_1_value d1_2) 0.5671664365007314)
		(= (dummy_1_value d1_3) 0.715835251254729)
		(= (dummy_1_value d1_4) 0.6572848099674151)

        (= (dummy_2_value d2_0) 6.401958662308707)

        (= (dummy_3_value d3_0) 49.4683964549518)
		(= (dummy_3_value d3_1) 93.91526322036474)
		(= (dummy_3_value d3_2) 38.045622308289175)
		(= (dummy_3_value d3_3) 6.519370821751685)

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

