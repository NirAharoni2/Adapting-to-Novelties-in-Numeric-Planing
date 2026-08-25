;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.572189414279277)

        (= (sled_supplies s0) 2.2797230670855346)

        (= (factor_value f0) 0.7852111150343541)
		(= (factor_value f1) 0.8094969547439428)

        (= (dummy_1_value d1_0) 0.5993746208464257)
		(= (dummy_1_value d1_1) 0.9902100660694104)
		(= (dummy_1_value d1_2) 0.837339880726054)
		(= (dummy_1_value d1_3) 0.5361577664953543)

        (= (dummy_2_value d2_0) 9.51883137094325)
		(= (dummy_2_value d2_1) 2.1638314464936776)

        (= (dummy_3_value d3_0) 24.489394326047506)
		(= (dummy_3_value d3_1) 68.10556232241554)
		(= (dummy_3_value d3_2) 67.64861445279864)

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

