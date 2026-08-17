;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.724766213723731)

        (= (sled_supplies s0) 5.461025401085263)

        (= (factor_value f0) 0.8601556260720692)
		(= (factor_value f1) 0.618817809732392)
		(= (factor_value f2) 0.6505434305870748)
		(= (factor_value f3) 0.9888986582243177)

        (= (dummy_1_value d1_0) 0.7605636466406029)
		(= (dummy_1_value d1_1) 0.7742152338434312)
		(= (dummy_1_value d1_2) 0.5057287431821096)
		(= (dummy_1_value d1_3) 0.7076051719019409)

        (= (dummy_2_value d2_0) 6.21968692417359)
		(= (dummy_2_value d2_1) 1.180476012741394)
		(= (dummy_2_value d2_2) 6.542181471756311)
		(= (dummy_2_value d2_3) 6.689624817665038)
		(= (dummy_2_value d2_4) 1.540724595649507)

        (= (dummy_3_value d3_0) 63.10676979208464)
		(= (dummy_3_value d3_1) 47.15879253997407)
		(= (dummy_3_value d3_2) 68.24885840577275)
		(= (dummy_3_value d3_3) 35.90512132106369)

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

