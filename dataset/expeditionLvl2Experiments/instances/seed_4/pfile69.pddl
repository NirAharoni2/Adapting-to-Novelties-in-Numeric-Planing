;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.46491068950372)

        (= (sled_supplies s0) 5.804907962043182)

        (= (factor_value f0) 0.9082571632164425)
		(= (factor_value f1) 0.8881178046396081)
		(= (factor_value f2) 0.505227534216864)

        (= (dummy_1_value d1_0) 0.5825427298179502)
		(= (dummy_1_value d1_1) 0.9241919437265977)
		(= (dummy_1_value d1_2) 0.6044203385290625)

        (= (dummy_2_value d2_0) 1.5888142938779368)
		(= (dummy_2_value d2_1) 9.674721108327557)
		(= (dummy_2_value d2_2) 1.4029904031261446)

        (= (dummy_3_value d3_0) 85.35809748036247)

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

