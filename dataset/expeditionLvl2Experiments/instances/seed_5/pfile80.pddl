;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.058325668590818)

        (= (sled_supplies s0) 6.841266317101234)

        (= (factor_value f0) 0.5829811113821671)

        (= (dummy_1_value d1_0) 0.5987667290376484)
		(= (dummy_1_value d1_1) 0.6967037746259832)
		(= (dummy_1_value d1_2) 0.9920464150298667)

        (= (dummy_2_value d2_0) 3.4422394139675916)
		(= (dummy_2_value d2_1) 6.795108151401469)

        (= (dummy_3_value d3_0) 90.31100544594887)
		(= (dummy_3_value d3_1) 3.5752427666127713)
		(= (dummy_3_value d3_2) 80.14207665232891)
		(= (dummy_3_value d3_3) 60.213123747367085)
		(= (dummy_3_value d3_4) 11.482267061340696)

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

