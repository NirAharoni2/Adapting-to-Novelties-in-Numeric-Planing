;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.412061599351881)

        (= (sled_supplies s0) 3.3343965071050436)

        (= (factor_value f0) 0.5778863879827667)
		(= (factor_value f1) 0.9567365220907453)
		(= (factor_value f2) 0.5709632697575482)
		(= (factor_value f3) 0.9395607219146331)
		(= (factor_value f4) 0.6081341783854048)

        (= (dummy_1_value d1_0) 0.9207948774136401)
		(= (dummy_1_value d1_1) 0.9241148411012494)
		(= (dummy_1_value d1_2) 0.667732355613601)
		(= (dummy_1_value d1_3) 0.9442961860162883)
		(= (dummy_1_value d1_4) 0.579883896394091)

        (= (dummy_2_value d2_0) 8.641985626191211)

        (= (dummy_3_value d3_0) 38.79172032684004)
		(= (dummy_3_value d3_1) 44.532042526888596)
		(= (dummy_3_value d3_2) 12.66811828087111)
		(= (dummy_3_value d3_3) 60.499521206089945)
		(= (dummy_3_value d3_4) 27.705826194837314)

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

