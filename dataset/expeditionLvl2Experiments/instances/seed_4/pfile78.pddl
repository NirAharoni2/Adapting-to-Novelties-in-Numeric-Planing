;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.744267115752637)

        (= (sled_supplies s0) 3.161322830797006)

        (= (factor_value f0) 0.6695410246909488)
		(= (factor_value f1) 0.5842808041999653)
		(= (factor_value f2) 0.9162831404111332)

        (= (dummy_1_value d1_0) 0.7653142110636586)
		(= (dummy_1_value d1_1) 0.6888822722320226)
		(= (dummy_1_value d1_2) 0.8145832547998657)
		(= (dummy_1_value d1_3) 0.5498579152531053)

        (= (dummy_2_value d2_0) 3.6569039569361523)
		(= (dummy_2_value d2_1) 4.2063119519028564)

        (= (dummy_3_value d3_0) 48.75533254505502)
		(= (dummy_3_value d3_1) 86.41686142620095)
		(= (dummy_3_value d3_2) 45.07685133790642)

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

