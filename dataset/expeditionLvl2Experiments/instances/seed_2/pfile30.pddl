;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.050502442984417)

        (= (sled_supplies s0) 0.7977846578440263)

        (= (factor_value f0) 0.9352258780190658)
		(= (factor_value f1) 0.5989532656642325)

        (= (dummy_1_value d1_0) 0.6565414930081517)
		(= (dummy_1_value d1_1) 0.6594680195054419)
		(= (dummy_1_value d1_2) 0.6279505073740734)

        (= (dummy_2_value d2_0) 7.517290249324763)
		(= (dummy_2_value d2_1) 4.085557515947202)

        (= (dummy_3_value d3_0) 44.61641277467938)
		(= (dummy_3_value d3_1) 42.51584195042647)
		(= (dummy_3_value d3_2) 83.51565943998696)
		(= (dummy_3_value d3_3) 2.8073509632049074)
		(= (dummy_3_value d3_4) 58.39986503756823)

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

