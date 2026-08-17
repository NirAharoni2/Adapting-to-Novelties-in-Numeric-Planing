;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.312018875906352)

        (= (sled_supplies s0) 4.513881077106859)

        (= (factor_value f0) 0.6291476784413568)
		(= (factor_value f1) 0.7649302868821554)
		(= (factor_value f2) 0.78145162805343)
		(= (factor_value f3) 0.9587772599303661)
		(= (factor_value f4) 0.6299192861226786)

        (= (dummy_1_value d1_0) 0.9882486911431085)
		(= (dummy_1_value d1_1) 0.5761259675966739)

        (= (dummy_2_value d2_0) 8.065800386169576)

        (= (dummy_3_value d3_0) 32.29597728719846)
		(= (dummy_3_value d3_1) 56.71387007050427)

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

