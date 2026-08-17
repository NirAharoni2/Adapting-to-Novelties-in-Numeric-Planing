;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.006333190379863)

        (= (sled_supplies s0) 6.027156808837963)

        (= (factor_value f0) 0.6061094053343004)

        (= (dummy_1_value d1_0) 0.5178672208681852)

        (= (dummy_2_value d2_0) 7.131215664933963)

        (= (dummy_3_value d3_0) 99.97216079858164)
		(= (dummy_3_value d3_1) 64.20866247236468)
		(= (dummy_3_value d3_2) 80.56327487214055)

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

