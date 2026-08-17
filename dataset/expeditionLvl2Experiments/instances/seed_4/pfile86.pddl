;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.416303935050037)

        (= (sled_supplies s0) 0.6429399425469783)

        (= (factor_value f0) 0.5736969478325288)
		(= (factor_value f1) 0.6406905938097882)
		(= (factor_value f2) 0.90477036350797)
		(= (factor_value f3) 0.5565787316580442)

        (= (dummy_1_value d1_0) 0.7713067710808239)
		(= (dummy_1_value d1_1) 0.5422278953475463)

        (= (dummy_2_value d2_0) 8.261736585310453)
		(= (dummy_2_value d2_1) 6.7751459453330165)
		(= (dummy_2_value d2_2) 2.097244754945925)
		(= (dummy_2_value d2_3) 8.941991180007681)
		(= (dummy_2_value d2_4) 6.8629407318005775)

        (= (dummy_3_value d3_0) 64.75580074162437)
		(= (dummy_3_value d3_1) 8.637638159492177)
		(= (dummy_3_value d3_2) 82.82927874043389)
		(= (dummy_3_value d3_3) 70.21239959995496)
		(= (dummy_3_value d3_4) 39.042747232230816)

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

