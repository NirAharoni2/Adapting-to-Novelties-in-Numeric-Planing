;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.092129474935586)

        (= (sled_supplies s0) 2.269391666146569)

        (= (factor_value f0) 0.8751839372778422)
		(= (factor_value f1) 0.8359930077015154)
		(= (factor_value f2) 0.5165765303449181)
		(= (factor_value f3) 0.9481791110042315)

        (= (dummy_1_value d1_0) 0.6721492332388455)
		(= (dummy_1_value d1_1) 0.8759991354084313)

        (= (dummy_2_value d2_0) 3.8445840436330316)
		(= (dummy_2_value d2_1) 1.5300429030465204)
		(= (dummy_2_value d2_2) 1.1956824143553046)
		(= (dummy_2_value d2_3) 5.10992449704994)
		(= (dummy_2_value d2_4) 8.639181319688554)

        (= (dummy_3_value d3_0) 16.44097178931098)
		(= (dummy_3_value d3_1) 78.7496566264926)
		(= (dummy_3_value d3_2) 33.104729382835075)

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

