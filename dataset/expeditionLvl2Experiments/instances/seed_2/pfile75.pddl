;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
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

        (= (sled_capacity s0) 7.294700388769427)

        (= (sled_supplies s0) 3.317274969709768)

        (= (factor_value f0) 0.7911912573243548)
		(= (factor_value f1) 0.8149263821880589)
		(= (factor_value f2) 0.842602582735652)

        (= (dummy_1_value d1_0) 0.7919801949283065)
		(= (dummy_1_value d1_1) 0.7326083776276047)

        (= (dummy_2_value d2_0) 8.284652360904268)
		(= (dummy_2_value d2_1) 1.1791876139159077)
		(= (dummy_2_value d2_2) 8.075398271236608)
		(= (dummy_2_value d2_3) 2.503851153665316)

        (= (dummy_3_value d3_0) 19.038303199278044)
		(= (dummy_3_value d3_1) 67.50508467649082)

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

