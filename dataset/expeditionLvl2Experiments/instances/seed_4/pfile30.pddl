;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.15562197306322)

        (= (sled_supplies s0) 8.751567978493473)

        (= (factor_value f0) 0.5162264789772238)
		(= (factor_value f1) 0.5994191052232671)
		(= (factor_value f2) 0.8387915080610568)

        (= (dummy_1_value d1_0) 0.5979839370339615)

        (= (dummy_2_value d2_0) 2.5475840554946325)
		(= (dummy_2_value d2_1) 7.436985934257424)

        (= (dummy_3_value d3_0) 74.88485916229011)
		(= (dummy_3_value d3_1) 8.991192958205756)
		(= (dummy_3_value d3_2) 10.225096688036096)
		(= (dummy_3_value d3_3) 88.93668295708974)

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

