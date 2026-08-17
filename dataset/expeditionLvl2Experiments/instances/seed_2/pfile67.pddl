;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.63271200505454)

        (= (sled_supplies s0) 7.2376678208002865)

        (= (factor_value f0) 0.7131140620296467)
		(= (factor_value f1) 0.8063214587367136)

        (= (dummy_1_value d1_0) 0.9360924533137398)
		(= (dummy_1_value d1_1) 0.6405517846996549)
		(= (dummy_1_value d1_2) 0.8792089257455493)

        (= (dummy_2_value d2_0) 9.614096775990832)
		(= (dummy_2_value d2_1) 3.288538785668678)
		(= (dummy_2_value d2_2) 1.156474574919587)
		(= (dummy_2_value d2_3) 2.4596282801078564)
		(= (dummy_2_value d2_4) 6.8078437309166535)

        (= (dummy_3_value d3_0) 22.398422415356325)

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

