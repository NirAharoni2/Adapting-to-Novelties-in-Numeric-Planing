;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.405232921419968)

        (= (sled_supplies s0) 4.7572768097984115)

        (= (factor_value f0) 0.7265203231600099)

        (= (dummy_1_value d1_0) 0.6366576154865713)

        (= (dummy_2_value d2_0) 6.610027133338567)
		(= (dummy_2_value d2_1) 7.301462431955297)
		(= (dummy_2_value d2_2) 1.5122312049917288)
		(= (dummy_2_value d2_3) 3.1588225967867647)

        (= (dummy_3_value d3_0) 38.28973639235825)

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

