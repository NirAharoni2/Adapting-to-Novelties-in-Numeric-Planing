;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.909505680302251)

        (= (sled_supplies s0) 8.252670807643065)

        (= (factor_value f0) 0.7276873105142597)
		(= (factor_value f1) 0.949291039646265)
		(= (factor_value f2) 0.9098587159955116)

        (= (dummy_1_value d1_0) 0.6035828418358425)
		(= (dummy_1_value d1_1) 0.8928199891048576)

        (= (dummy_2_value d2_0) 4.734363220807204)
		(= (dummy_2_value d2_1) 2.9994204638952424)
		(= (dummy_2_value d2_2) 1.4144599049852333)
		(= (dummy_2_value d2_3) 7.328818556742304)
		(= (dummy_2_value d2_4) 6.049401950033349)

        (= (dummy_3_value d3_0) 31.01390529174256)

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

