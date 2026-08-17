;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.796792278005514)

        (= (sled_supplies s0) 2.2775265567715843)

        (= (factor_value f0) 0.9381105464765538)
		(= (factor_value f1) 0.712301671126117)

        (= (dummy_1_value d1_0) 0.8550267967614809)
		(= (dummy_1_value d1_1) 0.8953374155471461)

        (= (dummy_2_value d2_0) 3.097729777468944)
		(= (dummy_2_value d2_1) 9.814172574498874)
		(= (dummy_2_value d2_2) 2.1176505632798097)

        (= (dummy_3_value d3_0) 57.31749128345513)
		(= (dummy_3_value d3_1) 78.32541758365295)
		(= (dummy_3_value d3_2) 84.70337744473589)
		(= (dummy_3_value d3_3) 52.008998130879846)
		(= (dummy_3_value d3_4) 49.30297107604299)

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

