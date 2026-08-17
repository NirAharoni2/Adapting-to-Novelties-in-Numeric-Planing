;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.158235817676985)

        (= (sled_supplies s0) 1.1459506288535195)

        (= (factor_value f0) 0.7706052693697236)
		(= (factor_value f1) 0.6514929463659914)

        (= (dummy_1_value d1_0) 0.5534158218720615)
		(= (dummy_1_value d1_1) 0.9988938575162196)
		(= (dummy_1_value d1_2) 0.9993871988919287)
		(= (dummy_1_value d1_3) 0.9254553431197458)

        (= (dummy_2_value d2_0) 5.011782737277202)

        (= (dummy_3_value d3_0) 73.23443340065734)
		(= (dummy_3_value d3_1) 91.13900136387369)
		(= (dummy_3_value d3_2) 54.65683147875731)

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

