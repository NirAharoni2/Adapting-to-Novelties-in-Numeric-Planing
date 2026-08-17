;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.917148981046224)

        (= (sled_supplies s0) 1.9678031265201879)

        (= (factor_value f0) 0.6508352999569496)
		(= (factor_value f1) 0.7431310741580748)
		(= (factor_value f2) 0.7398208769164529)

        (= (dummy_1_value d1_0) 0.8161856930472668)
		(= (dummy_1_value d1_1) 0.8871691097040746)
		(= (dummy_1_value d1_2) 0.6695881421918399)
		(= (dummy_1_value d1_3) 0.9702833561216249)
		(= (dummy_1_value d1_4) 0.7281634824168415)

        (= (dummy_2_value d2_0) 1.256757266421293)
		(= (dummy_2_value d2_1) 4.797041148317929)
		(= (dummy_2_value d2_2) 5.768413108487574)
		(= (dummy_2_value d2_3) 2.6468052511939697)

        (= (dummy_3_value d3_0) 88.08066087916222)
		(= (dummy_3_value d3_1) 60.06220345082072)
		(= (dummy_3_value d3_2) 52.4891646658244)

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

