;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.00393637971819)

        (= (sled_supplies s0) 0.30947339763774895)

        (= (factor_value f0) 0.95793899237206)
		(= (factor_value f1) 0.5756356625441815)
		(= (factor_value f2) 0.6496574053503894)
		(= (factor_value f3) 0.9823941843816804)
		(= (factor_value f4) 0.9629811392245383)

        (= (dummy_1_value d1_0) 0.6014566630806506)
		(= (dummy_1_value d1_1) 0.8518211689695965)
		(= (dummy_1_value d1_2) 0.9371531431932224)
		(= (dummy_1_value d1_3) 0.7956614256492621)

        (= (dummy_2_value d2_0) 7.320043262296306)
		(= (dummy_2_value d2_1) 5.715851870632507)
		(= (dummy_2_value d2_2) 3.112127593136039)

        (= (dummy_3_value d3_0) 22.09281787689922)

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

