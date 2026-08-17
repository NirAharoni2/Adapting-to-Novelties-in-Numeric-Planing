;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.77025093206245)

        (= (sled_supplies s0) 8.295783954124861)

        (= (factor_value f0) 0.9244389416787572)
		(= (factor_value f1) 0.6886181638362968)
		(= (factor_value f2) 0.5109009728841273)
		(= (factor_value f3) 0.7202152004151583)

        (= (dummy_1_value d1_0) 0.8909994923764861)
		(= (dummy_1_value d1_1) 0.9455352393435263)

        (= (dummy_2_value d2_0) 2.8001054383764776)
		(= (dummy_2_value d2_1) 2.1460728053265483)

        (= (dummy_3_value d3_0) 72.2241168877273)

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

