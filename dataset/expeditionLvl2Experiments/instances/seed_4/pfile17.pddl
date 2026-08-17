;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.438943054980987)

        (= (sled_supplies s0) 0.021925509979841308)

        (= (factor_value f0) 0.8157502252682418)
		(= (factor_value f1) 0.5861621414546907)
		(= (factor_value f2) 0.5745985383360809)

        (= (dummy_1_value d1_0) 0.7074799051605647)

        (= (dummy_2_value d2_0) 2.169945969479742)

        (= (dummy_3_value d3_0) 71.20776402372056)
		(= (dummy_3_value d3_1) 9.049463625519243)
		(= (dummy_3_value d3_2) 37.066530828792075)

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

