;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.124741316490184)

        (= (sled_supplies s0) 4.457544566184868)

        (= (factor_value f0) 0.7206057777242105)

        (= (dummy_1_value d1_0) 0.6788069586699457)

        (= (dummy_2_value d2_0) 4.808625728955851)
		(= (dummy_2_value d2_1) 7.913079473299219)
		(= (dummy_2_value d2_2) 5.700846199884217)
		(= (dummy_2_value d2_3) 2.1946297252978955)
		(= (dummy_2_value d2_4) 1.1111786977722353)

        (= (dummy_3_value d3_0) 75.8616877828053)
		(= (dummy_3_value d3_1) 69.17192366313303)

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

