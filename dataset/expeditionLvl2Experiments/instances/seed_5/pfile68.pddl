;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.208482921534277)

        (= (sled_supplies s0) 0.14995836656394396)

        (= (factor_value f0) 0.7798822528318213)
		(= (factor_value f1) 0.8027283331738178)
		(= (factor_value f2) 0.8276950075724057)
		(= (factor_value f3) 0.6561016901543297)
		(= (factor_value f4) 0.6395498396387348)

        (= (dummy_1_value d1_0) 0.7352006727902278)

        (= (dummy_2_value d2_0) 6.409243952116455)
		(= (dummy_2_value d2_1) 6.802069336435236)
		(= (dummy_2_value d2_2) 2.204066572679694)

        (= (dummy_3_value d3_0) 45.1673328895464)
		(= (dummy_3_value d3_1) 56.46648007233292)
		(= (dummy_3_value d3_2) 20.279442477287446)
		(= (dummy_3_value d3_3) 11.11578840355945)
		(= (dummy_3_value d3_4) 92.96573829941566)

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

