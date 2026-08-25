;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.479977648382429)

        (= (sled_supplies s0) 1.4125342862914207)

        (= (factor_value f0) 0.8210392445531005)

        (= (dummy_1_value d1_0) 0.7703862231971497)
		(= (dummy_1_value d1_1) 0.9109324451634795)
		(= (dummy_1_value d1_2) 0.7562459777563488)

        (= (dummy_2_value d2_0) 9.945391481531738)
		(= (dummy_2_value d2_1) 3.8399681652868196)
		(= (dummy_2_value d2_2) 7.9891189030353615)
		(= (dummy_2_value d2_3) 6.805430495349421)

        (= (dummy_3_value d3_0) 99.38537569780874)

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

