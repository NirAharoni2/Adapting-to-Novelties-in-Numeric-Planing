;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.32744124519735)

        (= (sled_supplies s0) 1.2877637171916534)

        (= (factor_value f0) 0.8285071900111571)

        (= (dummy_1_value d1_0) 0.8871763933410521)
		(= (dummy_1_value d1_1) 0.9243187541890767)
		(= (dummy_1_value d1_2) 0.6069804575559125)

        (= (dummy_2_value d2_0) 6.640544312470812)
		(= (dummy_2_value d2_1) 9.852390419279082)
		(= (dummy_2_value d2_2) 2.496295799622137)

        (= (dummy_3_value d3_0) 45.08036533729641)
		(= (dummy_3_value d3_1) 37.429156681342604)
		(= (dummy_3_value d3_2) 85.56222234560299)
		(= (dummy_3_value d3_3) 46.85450515214736)

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

