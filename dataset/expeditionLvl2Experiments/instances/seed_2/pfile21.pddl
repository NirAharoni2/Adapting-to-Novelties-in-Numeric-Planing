;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.69909689599043)

        (= (sled_supplies s0) 5.101770506871539)

        (= (factor_value f0) 0.9788561496933331)
		(= (factor_value f1) 0.6770017610517693)
		(= (factor_value f2) 0.7383170056629832)
		(= (factor_value f3) 0.9467825327944579)
		(= (factor_value f4) 0.5932250444400282)

        (= (dummy_1_value d1_0) 0.9803347489946115)

        (= (dummy_2_value d2_0) 2.1435016074173854)
		(= (dummy_2_value d2_1) 1.252265721100749)
		(= (dummy_2_value d2_2) 4.157020036159235)

        (= (dummy_3_value d3_0) 36.55830480625229)
		(= (dummy_3_value d3_1) 91.8467877802399)
		(= (dummy_3_value d3_2) 88.4362308345793)

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

