;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.710349412643625)

        (= (sled_supplies s0) 4.139732220841097)

        (= (factor_value f0) 0.6090098652426088)
		(= (factor_value f1) 0.7842007817741565)
		(= (factor_value f2) 0.6352999405005121)

        (= (dummy_1_value d1_0) 0.893503468934146)
		(= (dummy_1_value d1_1) 0.5169544574976996)

        (= (dummy_2_value d2_0) 9.618229267874614)
		(= (dummy_2_value d2_1) 3.836268046952747)
		(= (dummy_2_value d2_2) 8.525845107035991)
		(= (dummy_2_value d2_3) 6.17351758220998)

        (= (dummy_3_value d3_0) 86.5090325443493)
		(= (dummy_3_value d3_1) 34.67085705634515)

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

