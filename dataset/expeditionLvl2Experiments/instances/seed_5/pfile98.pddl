;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.856085365488173)

        (= (sled_supplies s0) 2.44938931221857)

        (= (factor_value f0) 0.6754264004644421)
		(= (factor_value f1) 0.6611290781845042)
		(= (factor_value f2) 0.9276227735930174)
		(= (factor_value f3) 0.9596820991243604)
		(= (factor_value f4) 0.600411901219235)

        (= (dummy_1_value d1_0) 0.7649201105309995)
		(= (dummy_1_value d1_1) 0.5374665744058928)
		(= (dummy_1_value d1_2) 0.9735086348906488)
		(= (dummy_1_value d1_3) 0.8198473473779622)

        (= (dummy_2_value d2_0) 4.883286557477805)
		(= (dummy_2_value d2_1) 8.55810453421077)

        (= (dummy_3_value d3_0) 14.945463343492952)
		(= (dummy_3_value d3_1) 27.276921955021805)
		(= (dummy_3_value d3_2) 73.21636875001123)

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

