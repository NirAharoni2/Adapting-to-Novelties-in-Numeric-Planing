;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.579586599991059)

        (= (sled_supplies s0) 6.805913859266639)

        (= (factor_value f0) 0.730470482063986)
		(= (factor_value f1) 0.8516156048865879)
		(= (factor_value f2) 0.7020816947313704)

        (= (dummy_1_value d1_0) 0.9975665187781796)
		(= (dummy_1_value d1_1) 0.8914078688783114)
		(= (dummy_1_value d1_2) 0.7867202003632652)
		(= (dummy_1_value d1_3) 0.5723825114468455)
		(= (dummy_1_value d1_4) 0.7205916297393609)

        (= (dummy_2_value d2_0) 1.264464186784523)
		(= (dummy_2_value d2_1) 6.356477576861248)

        (= (dummy_3_value d3_0) 88.29993425263889)
		(= (dummy_3_value d3_1) 18.862024708783572)
		(= (dummy_3_value d3_2) 51.50697881954655)
		(= (dummy_3_value d3_3) 48.7633742028554)
		(= (dummy_3_value d3_4) 41.08655322431348)

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

