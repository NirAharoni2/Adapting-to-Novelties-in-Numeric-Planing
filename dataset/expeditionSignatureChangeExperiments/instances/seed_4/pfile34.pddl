;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.27700239443734)

        (= (sled_supplies s0) 1.8180189690231574)

        (= (factor_value f0) 0.5023540608303565)
		(= (factor_value f1) 0.9967405392376141)
		(= (factor_value f2) 0.717087744488636)
		(= (factor_value f3) 0.8686367237726833)
		(= (factor_value f4) 0.7788590014824506)

        (= (dummy_1_value d1_0) 0.9874257571025272)

        (= (dummy_2_value d2_0) 4.088539708969009)
		(= (dummy_2_value d2_1) 4.144894420394603)
		(= (dummy_2_value d2_2) 7.1395274936683055)

        (= (dummy_3_value d3_0) 1.056081289761895)

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

