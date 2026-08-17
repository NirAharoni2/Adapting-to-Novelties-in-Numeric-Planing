;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.39462841153147)

        (= (sled_supplies s0) 5.403894695364275)

        (= (factor_value f0) 0.9137303328343438)
		(= (factor_value f1) 0.6221464452287184)
		(= (factor_value f2) 0.6335040148126352)
		(= (factor_value f3) 0.5673887106382098)
		(= (factor_value f4) 0.803363000680513)

        (= (dummy_1_value d1_0) 0.8705070073832331)
		(= (dummy_1_value d1_1) 0.5936815593455895)

        (= (dummy_2_value d2_0) 8.386699399727293)
		(= (dummy_2_value d2_1) 1.0931936945232044)

        (= (dummy_3_value d3_0) 12.582586445797972)
		(= (dummy_3_value d3_1) 10.309923666770597)
		(= (dummy_3_value d3_2) 78.88854940917729)
		(= (dummy_3_value d3_3) 9.19293499329378)

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

