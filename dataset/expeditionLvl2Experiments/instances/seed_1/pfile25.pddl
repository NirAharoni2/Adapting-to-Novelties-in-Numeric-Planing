;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.112371182671438)

        (= (sled_supplies s0) 5.963294043745314)

        (= (factor_value f0) 0.6186167630777705)
		(= (factor_value f1) 0.6669727126846805)

        (= (dummy_1_value d1_0) 0.5342770854938208)

        (= (dummy_2_value d2_0) 7.2927553018636875)
		(= (dummy_2_value d2_1) 9.19305805644974)
		(= (dummy_2_value d2_2) 6.92906455929483)
		(= (dummy_2_value d2_3) 5.211429682401346)

        (= (dummy_3_value d3_0) 56.207441992579724)
		(= (dummy_3_value d3_1) 5.9244955754787245)
		(= (dummy_3_value d3_2) 30.390749399763585)

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

