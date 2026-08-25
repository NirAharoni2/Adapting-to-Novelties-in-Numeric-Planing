;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.777818950187505)

        (= (sled_supplies s0) 2.692477712867252)

        (= (factor_value f0) 0.7417269655397591)

        (= (dummy_1_value d1_0) 0.819969415397362)
		(= (dummy_1_value d1_1) 0.7384225759378218)
		(= (dummy_1_value d1_2) 0.8018143392276724)
		(= (dummy_1_value d1_3) 0.5331437258002424)

        (= (dummy_2_value d2_0) 9.315999970921466)
		(= (dummy_2_value d2_1) 1.6217097840675874)
		(= (dummy_2_value d2_2) 2.1937840397011845)

        (= (dummy_3_value d3_0) 5.641567782824044)
		(= (dummy_3_value d3_1) 40.39282198439384)
		(= (dummy_3_value d3_2) 58.5981140910755)
		(= (dummy_3_value d3_3) 62.44645930950634)
		(= (dummy_3_value d3_4) 71.5905160976211)

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

