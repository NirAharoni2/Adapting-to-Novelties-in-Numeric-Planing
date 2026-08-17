;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.1852879960140505)

        (= (sled_supplies s0) 1.7090249789167717)

        (= (factor_value f0) 0.8131753727699518)
		(= (factor_value f1) 0.6402166058081094)

        (= (dummy_1_value d1_0) 0.7673108974397111)
		(= (dummy_1_value d1_1) 0.7356200430574965)

        (= (dummy_2_value d2_0) 4.085589388799404)
		(= (dummy_2_value d2_1) 9.975509867549011)
		(= (dummy_2_value d2_2) 2.7601614489998383)

        (= (dummy_3_value d3_0) 41.86667098432518)
		(= (dummy_3_value d3_1) 21.06439100106724)
		(= (dummy_3_value d3_2) 63.633833197310885)

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

