;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.582039596536203)

        (= (sled_supplies s0) 0.7562966897454557)

        (= (factor_value f0) 0.5484993757199579)
		(= (factor_value f1) 0.5165827951816534)
		(= (factor_value f2) 0.6012037589982091)
		(= (factor_value f3) 0.5197265576199783)

        (= (dummy_1_value d1_0) 0.9446287264567529)
		(= (dummy_1_value d1_1) 0.7404960344033218)
		(= (dummy_1_value d1_2) 0.8801736844648331)

        (= (dummy_2_value d2_0) 1.0039566892600738)
		(= (dummy_2_value d2_1) 5.2316790722677045)
		(= (dummy_2_value d2_2) 9.007991965200397)
		(= (dummy_2_value d2_3) 6.575188422914029)
		(= (dummy_2_value d2_4) 4.857803545216667)

        (= (dummy_3_value d3_0) 47.09177581763192)

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

