;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.581752605815579)

        (= (sled_supplies s0) 4.25411802020153)

        (= (factor_value f0) 0.9630887675972707)
		(= (factor_value f1) 0.5475227049392315)
		(= (factor_value f2) 0.5710999771352099)
		(= (factor_value f3) 0.6021728080933225)

        (= (dummy_1_value d1_0) 0.6254900140366235)
		(= (dummy_1_value d1_1) 0.7101987762764543)
		(= (dummy_1_value d1_2) 0.6250881146235074)
		(= (dummy_1_value d1_3) 0.671344951493723)
		(= (dummy_1_value d1_4) 0.6232406970386849)

        (= (dummy_2_value d2_0) 3.1607958790088366)
		(= (dummy_2_value d2_1) 6.495442803365522)
		(= (dummy_2_value d2_2) 4.028122778690346)

        (= (dummy_3_value d3_0) 37.90611398331417)
		(= (dummy_3_value d3_1) 77.01383974055702)
		(= (dummy_3_value d3_2) 7.10714567726399)
		(= (dummy_3_value d3_3) 15.260196503772182)

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

