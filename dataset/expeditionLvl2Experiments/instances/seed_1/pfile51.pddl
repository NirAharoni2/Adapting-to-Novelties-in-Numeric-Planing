;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.577667812734383)

        (= (sled_supplies s0) 9.337026153469306)

        (= (factor_value f0) 0.8787375603259605)

        (= (dummy_1_value d1_0) 0.5607410817414483)
		(= (dummy_1_value d1_1) 0.7913904973181511)
		(= (dummy_1_value d1_2) 0.7401279877770907)

        (= (dummy_2_value d2_0) 2.8829273167934093)

        (= (dummy_3_value d3_0) 63.52864844762524)
		(= (dummy_3_value d3_1) 95.35632954758724)
		(= (dummy_3_value d3_2) 40.32721395747786)
		(= (dummy_3_value d3_3) 23.55263715140486)
		(= (dummy_3_value d3_4) 25.587035463939642)

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

