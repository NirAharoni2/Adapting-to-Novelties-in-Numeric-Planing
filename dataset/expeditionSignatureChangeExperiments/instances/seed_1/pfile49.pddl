;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.896091223953437)

        (= (sled_supplies s0) 0.6978744838552164)

        (= (factor_value f0) 0.7992794501753497)
		(= (factor_value f1) 0.7111396129282668)

        (= (dummy_1_value d1_0) 0.9667632779856925)
		(= (dummy_1_value d1_1) 0.7042154535879709)
		(= (dummy_1_value d1_2) 0.8028895611390013)
		(= (dummy_1_value d1_3) 0.5266371447562674)

        (= (dummy_2_value d2_0) 5.236874811442626)
		(= (dummy_2_value d2_1) 1.3367281169798009)
		(= (dummy_2_value d2_2) 7.337195808263735)
		(= (dummy_2_value d2_3) 1.0053121694154221)
		(= (dummy_2_value d2_4) 1.3785901031336647)

        (= (dummy_3_value d3_0) 12.001435899374934)

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

