;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.129156078400232)

        (= (sled_supplies s0) 4.245298455737924)

        (= (factor_value f0) 0.9601618068855812)
		(= (factor_value f1) 0.6091624082690127)

        (= (dummy_1_value d1_0) 0.9454998049417489)
		(= (dummy_1_value d1_1) 0.7420178985249162)
		(= (dummy_1_value d1_2) 0.8648168633799971)
		(= (dummy_1_value d1_3) 0.5756937469923009)
		(= (dummy_1_value d1_4) 0.5255936989558371)

        (= (dummy_2_value d2_0) 3.259315330168242)

        (= (dummy_3_value d3_0) 59.95919781728709)
		(= (dummy_3_value d3_1) 89.34853645293664)
		(= (dummy_3_value d3_2) 56.8920461831314)

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

