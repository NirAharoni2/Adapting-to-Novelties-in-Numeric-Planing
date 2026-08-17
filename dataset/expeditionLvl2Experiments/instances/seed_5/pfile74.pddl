;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.7248178391219255)

        (= (sled_supplies s0) 2.806761310739095)

        (= (factor_value f0) 0.8255155065069173)
		(= (factor_value f1) 0.6915135271962284)
		(= (factor_value f2) 0.5571868950853591)
		(= (factor_value f3) 0.9172377846717492)
		(= (factor_value f4) 0.7627723020177791)

        (= (dummy_1_value d1_0) 0.6956499469923025)
		(= (dummy_1_value d1_1) 0.5438361235375089)

        (= (dummy_2_value d2_0) 1.8660681251995315)
		(= (dummy_2_value d2_1) 3.825730687097039)
		(= (dummy_2_value d2_2) 6.043335580761552)

        (= (dummy_3_value d3_0) 14.729133673126091)
		(= (dummy_3_value d3_1) 72.2665436408873)
		(= (dummy_3_value d3_2) 63.167173808781726)

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

