;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.103834269742867)

        (= (sled_supplies s0) 4.049710363863349)

        (= (factor_value f0) 0.6245263280308788)
		(= (factor_value f1) 0.5259266268495488)
		(= (factor_value f2) 0.5784256611511334)
		(= (factor_value f3) 0.6858966777811536)
		(= (factor_value f4) 0.9342227289325477)

        (= (dummy_1_value d1_0) 0.6903789585223825)
		(= (dummy_1_value d1_1) 0.5509872010869576)
		(= (dummy_1_value d1_2) 0.6246653572213433)

        (= (dummy_2_value d2_0) 7.580653451014817)
		(= (dummy_2_value d2_1) 4.673359494770626)
		(= (dummy_2_value d2_2) 2.6386809740000086)

        (= (dummy_3_value d3_0) 86.87845033263281)
		(= (dummy_3_value d3_1) 39.55429384709013)
		(= (dummy_3_value d3_2) 76.43061733184422)
		(= (dummy_3_value d3_3) 8.121241835787693)
		(= (dummy_3_value d3_4) 62.174692311345034)

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

