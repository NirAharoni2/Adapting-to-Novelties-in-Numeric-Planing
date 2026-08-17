;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.573638944896075)

        (= (sled_supplies s0) 5.216622731661568)

        (= (factor_value f0) 0.5014800379840891)
		(= (factor_value f1) 0.6950834631099543)
		(= (factor_value f2) 0.5890667205706288)
		(= (factor_value f3) 0.8265467231286108)
		(= (factor_value f4) 0.9497682832449025)

        (= (dummy_1_value d1_0) 0.9550874146721687)

        (= (dummy_2_value d2_0) 6.521768300925795)

        (= (dummy_3_value d3_0) 39.2797623656501)
		(= (dummy_3_value d3_1) 11.78155529848404)

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

