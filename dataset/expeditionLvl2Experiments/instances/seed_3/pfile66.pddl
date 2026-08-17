;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.584489607113479)

        (= (sled_supplies s0) 5.236867465333518)

        (= (factor_value f0) 0.7563680406637624)
		(= (factor_value f1) 0.5579429645912211)
		(= (factor_value f2) 0.5520959481398362)
		(= (factor_value f3) 0.6072182504348662)
		(= (factor_value f4) 0.9593241262920892)

        (= (dummy_1_value d1_0) 0.7746491985591837)
		(= (dummy_1_value d1_1) 0.564325600513509)

        (= (dummy_2_value d2_0) 4.799174352853795)

        (= (dummy_3_value d3_0) 99.20036205183092)
		(= (dummy_3_value d3_1) 16.60735471799336)

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

