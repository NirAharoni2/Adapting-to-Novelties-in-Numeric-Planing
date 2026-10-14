;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 90.38523619102979)

        (= (sled_supplies s0) 2.543145889064438)

        (= (factor_value f0) 4.962486051099537)
		(= (factor_value f1) 9.363788579147485)
		(= (factor_value f2) 0.6322387245269796)
		(= (factor_value f3) 2.510289817139748)
		(= (factor_value f4) 0.5995316462549456)

        (= (dummy_1_value d1_0) 0.698659456452535)
		(= (dummy_1_value d1_1) 0.5300693737264762)
		(= (dummy_1_value d1_2) 0.6277150244766011)
		(= (dummy_1_value d1_3) 0.7037359790722911)
		(= (dummy_1_value d1_4) 0.652974444033554)

        (= (dummy_2_value d2_0) 1.4620708441418349)
		(= (dummy_2_value d2_1) 1.3384409960450325)
		(= (dummy_2_value d2_2) 9.744622198868354)

        (= (dummy_3_value d3_0) 18.759257770160296)

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

