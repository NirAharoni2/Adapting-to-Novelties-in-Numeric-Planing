;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.2618084327985795)

        (= (sled_supplies s0) 4.849660949560734)

        (= (factor_value f0) 0.5974060357341149)
		(= (factor_value f1) 0.5777901129326437)
		(= (factor_value f2) 0.9555925153700824)

        (= (dummy_1_value d1_0) 0.7579564916137369)
		(= (dummy_1_value d1_1) 0.5591940070925963)

        (= (dummy_2_value d2_0) 4.403458105917518)
		(= (dummy_2_value d2_1) 2.746721553542689)

        (= (dummy_3_value d3_0) 20.161106573342632)
		(= (dummy_3_value d3_1) 41.17272494826801)
		(= (dummy_3_value d3_2) 69.43263401415011)
		(= (dummy_3_value d3_3) 87.64321195714929)

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

