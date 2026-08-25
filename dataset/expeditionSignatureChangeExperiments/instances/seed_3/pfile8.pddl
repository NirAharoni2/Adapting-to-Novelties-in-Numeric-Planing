;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.098855918956259)

        (= (sled_supplies s0) 1.4452091807075234)

        (= (factor_value f0) 0.70476105822453)
		(= (factor_value f1) 0.9603061914938154)
		(= (factor_value f2) 0.5779989294691796)
		(= (factor_value f3) 0.5023308972915728)
		(= (factor_value f4) 0.9716339179595543)

        (= (dummy_1_value d1_0) 0.939989125813024)
		(= (dummy_1_value d1_1) 0.9934568275143978)
		(= (dummy_1_value d1_2) 0.7171761563378256)

        (= (dummy_2_value d2_0) 9.551450497447206)
		(= (dummy_2_value d2_1) 9.346394929702047)
		(= (dummy_2_value d2_2) 2.998816626450891)
		(= (dummy_2_value d2_3) 7.709707082137772)

        (= (dummy_3_value d3_0) 83.83316924858588)
		(= (dummy_3_value d3_1) 66.63573285232057)
		(= (dummy_3_value d3_2) 52.38248268792958)

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

