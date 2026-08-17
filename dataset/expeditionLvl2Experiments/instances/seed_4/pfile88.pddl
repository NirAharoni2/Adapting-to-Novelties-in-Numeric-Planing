;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
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

        (= (sled_capacity s0) 8.793211087092198)

        (= (sled_supplies s0) 2.6793860494471433)

        (= (factor_value f0) 0.6825606327627713)
		(= (factor_value f1) 0.8869784478953509)
		(= (factor_value f2) 0.5009388589780477)
		(= (factor_value f3) 0.631868041045581)
		(= (factor_value f4) 0.7884197512144542)

        (= (dummy_1_value d1_0) 0.557067712887223)
		(= (dummy_1_value d1_1) 0.5203390287915339)
		(= (dummy_1_value d1_2) 0.8087866042190014)

        (= (dummy_2_value d2_0) 6.049048632629093)
		(= (dummy_2_value d2_1) 6.861571803981858)
		(= (dummy_2_value d2_2) 8.638296084388807)
		(= (dummy_2_value d2_3) 3.898889099011978)

        (= (dummy_3_value d3_0) 90.77199226457768)
		(= (dummy_3_value d3_1) 86.04713757260619)
		(= (dummy_3_value d3_2) 95.30220803744743)

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

