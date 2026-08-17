;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.872373232079257)

        (= (sled_supplies s0) 5.744744617287222)

        (= (factor_value f0) 0.8392719206508024)
		(= (factor_value f1) 0.7831957107121622)
		(= (factor_value f2) 0.5909898938455969)
		(= (factor_value f3) 0.8228339021287838)
		(= (factor_value f4) 0.8154422199336511)

        (= (dummy_1_value d1_0) 0.589552210162503)
		(= (dummy_1_value d1_1) 0.9449596253036803)
		(= (dummy_1_value d1_2) 0.8276856558555281)
		(= (dummy_1_value d1_3) 0.5615654107489281)
		(= (dummy_1_value d1_4) 0.965922041087528)

        (= (dummy_2_value d2_0) 2.272458257431494)

        (= (dummy_3_value d3_0) 33.821461356079524)
		(= (dummy_3_value d3_1) 72.32725960991752)
		(= (dummy_3_value d3_2) 60.14584673638354)
		(= (dummy_3_value d3_3) 55.93745889332938)

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

