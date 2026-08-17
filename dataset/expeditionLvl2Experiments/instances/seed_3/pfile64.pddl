;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.406536011040455)

        (= (sled_supplies s0) 5.137197880313612)

        (= (factor_value f0) 0.5144418676305238)
		(= (factor_value f1) 0.6528093236729102)
		(= (factor_value f2) 0.8690317222295434)

        (= (dummy_1_value d1_0) 0.6290614485245822)
		(= (dummy_1_value d1_1) 0.7365745110354052)
		(= (dummy_1_value d1_2) 0.6283617139070525)
		(= (dummy_1_value d1_3) 0.6788062754922948)
		(= (dummy_1_value d1_4) 0.8252718346630908)

        (= (dummy_2_value d2_0) 7.693280498013025)
		(= (dummy_2_value d2_1) 9.611424586079625)
		(= (dummy_2_value d2_2) 5.291276378771823)
		(= (dummy_2_value d2_3) 2.82485342381716)

        (= (dummy_3_value d3_0) 34.35549946427038)
		(= (dummy_3_value d3_1) 6.790880096438325)
		(= (dummy_3_value d3_2) 24.716289585830513)
		(= (dummy_3_value d3_3) 58.86980470128931)

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

