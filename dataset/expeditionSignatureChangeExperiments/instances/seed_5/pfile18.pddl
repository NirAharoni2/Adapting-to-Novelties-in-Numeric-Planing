;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.86348732975901)

        (= (sled_supplies s0) 1.9287397480807784)

        (= (factor_value f0) 0.8325313757786368)

        (= (dummy_1_value d1_0) 0.9102980912160161)
		(= (dummy_1_value d1_1) 0.5698826115633904)

        (= (dummy_2_value d2_0) 6.623177263012707)
		(= (dummy_2_value d2_1) 4.188684363084694)
		(= (dummy_2_value d2_2) 3.1151695967332937)
		(= (dummy_2_value d2_3) 3.9993857247744495)

        (= (dummy_3_value d3_0) 61.761979600989726)
		(= (dummy_3_value d3_1) 35.51850228613695)

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

