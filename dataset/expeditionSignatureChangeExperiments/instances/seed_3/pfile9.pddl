;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.482835824920244)

        (= (sled_supplies s0) 2.6248206770791245)

        (= (factor_value f0) 0.949837418011899)
		(= (factor_value f1) 0.7884767020097257)
		(= (factor_value f2) 0.5065722483435564)

        (= (dummy_1_value d1_0) 0.8726491336554808)

        (= (dummy_2_value d2_0) 2.546394314830634)
		(= (dummy_2_value d2_1) 3.6989926185564386)

        (= (dummy_3_value d3_0) 66.62671432617799)

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

