;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.792565378693793)

        (= (sled_supplies s0) 3.599576685066771)

        (= (factor_value f0) 0.8714150637611886)
		(= (factor_value f1) 0.8504737449808757)

        (= (dummy_1_value d1_0) 0.7333028799211796)
		(= (dummy_1_value d1_1) 0.9143294313326835)
		(= (dummy_1_value d1_2) 0.9491695811083718)

        (= (dummy_2_value d2_0) 7.5377777838718725)
		(= (dummy_2_value d2_1) 8.969544520366837)

        (= (dummy_3_value d3_0) 49.28989603289707)

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

