;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.12716227112389)

        (= (sled_supplies s0) 0.5417184956527482)

        (= (factor_value f0) 0.871099357539828)
		(= (factor_value f1) 0.851321811682801)

        (= (dummy_1_value d1_0) 0.7375752461689699)
		(= (dummy_1_value d1_1) 0.5238957730550958)

        (= (dummy_2_value d2_0) 7.950003599757624)
		(= (dummy_2_value d2_1) 8.407736338829874)

        (= (dummy_3_value d3_0) 83.71209643261281)
		(= (dummy_3_value d3_1) 60.21167664930963)
		(= (dummy_3_value d3_2) 4.778763623642547)
		(= (dummy_3_value d3_3) 20.392584277071833)

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

