;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.740157253704686)

        (= (sled_supplies s0) 6.1507456714951685)

        (= (factor_value f0) 0.5065939883769011)
		(= (factor_value f1) 0.716178599389045)
		(= (factor_value f2) 0.669134489579248)
		(= (factor_value f3) 0.5256313331555083)

        (= (dummy_1_value d1_0) 0.7730078392148979)
		(= (dummy_1_value d1_1) 0.5469088161364896)
		(= (dummy_1_value d1_2) 0.655807596675015)

        (= (dummy_2_value d2_0) 3.2250947955829483)
		(= (dummy_2_value d2_1) 8.219143066462)
		(= (dummy_2_value d2_2) 4.763967629567095)

        (= (dummy_3_value d3_0) 26.77514261464621)
		(= (dummy_3_value d3_1) 5.356743506379662)
		(= (dummy_3_value d3_2) 43.526744482623016)
		(= (dummy_3_value d3_3) 63.12093308270742)
		(= (dummy_3_value d3_4) 67.84741719360673)

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

