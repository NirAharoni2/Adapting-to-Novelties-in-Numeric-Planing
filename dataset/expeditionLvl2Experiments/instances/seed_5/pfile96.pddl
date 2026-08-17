;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.540719730906826)

        (= (sled_supplies s0) 0.5353210333606109)

        (= (factor_value f0) 0.6273000974408243)
		(= (factor_value f1) 0.921288669679041)
		(= (factor_value f2) 0.9504329714478575)
		(= (factor_value f3) 0.858636580373703)

        (= (dummy_1_value d1_0) 0.7274922390419138)
		(= (dummy_1_value d1_1) 0.6667023362621096)
		(= (dummy_1_value d1_2) 0.5795264320951188)
		(= (dummy_1_value d1_3) 0.7702164787837854)
		(= (dummy_1_value d1_4) 0.8964385129096021)

        (= (dummy_2_value d2_0) 2.960258446945158)
		(= (dummy_2_value d2_1) 8.628403115556093)
		(= (dummy_2_value d2_2) 9.327551386941911)
		(= (dummy_2_value d2_3) 2.7328186459030386)
		(= (dummy_2_value d2_4) 7.147607835661625)

        (= (dummy_3_value d3_0) 36.29348706788712)
		(= (dummy_3_value d3_1) 46.50611371829515)
		(= (dummy_3_value d3_2) 58.96460577380454)
		(= (dummy_3_value d3_3) 72.6316689646459)
		(= (dummy_3_value d3_4) 28.35295462043168)

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

