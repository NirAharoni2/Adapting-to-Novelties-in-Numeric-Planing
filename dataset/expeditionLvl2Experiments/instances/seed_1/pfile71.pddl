;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.24160356962835)

        (= (sled_supplies s0) 2.699077074990673)

        (= (factor_value f0) 0.8313351246570158)
		(= (factor_value f1) 0.7147668265226967)
		(= (factor_value f2) 0.9209939849031175)
		(= (factor_value f3) 0.8761270272971349)
		(= (factor_value f4) 0.8193517047609808)

        (= (dummy_1_value d1_0) 0.5574829969597939)
		(= (dummy_1_value d1_1) 0.6102838585906547)
		(= (dummy_1_value d1_2) 0.8028144007470706)
		(= (dummy_1_value d1_3) 0.8216682253382279)

        (= (dummy_2_value d2_0) 9.761159747144578)
		(= (dummy_2_value d2_1) 9.342222857341927)
		(= (dummy_2_value d2_2) 4.930960330028983)

        (= (dummy_3_value d3_0) 78.65754166860249)
		(= (dummy_3_value d3_1) 6.366818816558969)
		(= (dummy_3_value d3_2) 60.09505368029835)
		(= (dummy_3_value d3_3) 51.90337310449415)
		(= (dummy_3_value d3_4) 17.143321639618033)

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

