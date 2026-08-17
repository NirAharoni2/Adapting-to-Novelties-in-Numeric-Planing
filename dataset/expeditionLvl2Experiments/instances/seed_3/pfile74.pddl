;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.064867548673176)

        (= (sled_supplies s0) 4.153407398063063)

        (= (factor_value f0) 0.8883428580005047)
		(= (factor_value f1) 0.6479792459784924)
		(= (factor_value f2) 0.5368289283819909)
		(= (factor_value f3) 0.9640345550573785)
		(= (factor_value f4) 0.8648520197840259)

        (= (dummy_1_value d1_0) 0.7971105667038534)
		(= (dummy_1_value d1_1) 0.7023250459343079)
		(= (dummy_1_value d1_2) 0.9794103112452934)
		(= (dummy_1_value d1_3) 0.7153143950583882)
		(= (dummy_1_value d1_4) 0.6082723286801637)

        (= (dummy_2_value d2_0) 1.903135892994156)
		(= (dummy_2_value d2_1) 4.159414299339845)
		(= (dummy_2_value d2_2) 6.406877984164389)

        (= (dummy_3_value d3_0) 37.088816714496836)
		(= (dummy_3_value d3_1) 94.76329673391746)
		(= (dummy_3_value d3_2) 65.33171282281737)

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

