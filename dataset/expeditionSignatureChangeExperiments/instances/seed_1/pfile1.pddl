;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
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

        (= (sled_capacity s0) 13.804812224562877)

        (= (sled_supplies s0) 2.9557671750065193)

        (= (factor_value f0) 0.7361226217880583)
		(= (factor_value f1) 0.6898076116618639)

        (= (dummy_1_value d1_0) 0.6049774031857386)
		(= (dummy_1_value d1_1) 0.7439283282620738)
		(= (dummy_1_value d1_2) 0.9466585212788176)
		(= (dummy_1_value d1_3) 0.694904403510567)
		(= (dummy_1_value d1_4) 0.8037189981426301)

        (= (dummy_2_value d2_0) 7.904418662331659)

        (= (dummy_3_value d3_0) 69.8874538100759)
		(= (dummy_3_value d3_1) 27.366725485268695)
		(= (dummy_3_value d3_2) 80.38081033265188)

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

