;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.60104047681371)

        (= (sled_supplies s0) 6.607661662209241)

        (= (factor_value f0) 0.9117595581316091)
		(= (factor_value f1) 0.671126623752506)
		(= (factor_value f2) 0.9392906565966799)

        (= (dummy_1_value d1_0) 0.9629629611786363)
		(= (dummy_1_value d1_1) 0.751303160864329)

        (= (dummy_2_value d2_0) 7.209849756874435)
		(= (dummy_2_value d2_1) 9.539039000007367)

        (= (dummy_3_value d3_0) 74.51343062924629)
		(= (dummy_3_value d3_1) 75.34969776621651)

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

