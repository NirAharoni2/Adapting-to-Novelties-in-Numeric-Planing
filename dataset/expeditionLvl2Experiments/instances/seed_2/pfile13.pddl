;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.592819186056834)

        (= (sled_supplies s0) 2.7530271222448146)

        (= (factor_value f0) 0.8992852571835717)

        (= (dummy_1_value d1_0) 0.9556830409746631)
		(= (dummy_1_value d1_1) 0.8406773805194983)
		(= (dummy_1_value d1_2) 0.9049052806499678)

        (= (dummy_2_value d2_0) 1.3381463002907852)
		(= (dummy_2_value d2_1) 9.765231964494605)

        (= (dummy_3_value d3_0) 39.6688118870427)
		(= (dummy_3_value d3_1) 71.13191286029294)
		(= (dummy_3_value d3_2) 88.63050554267168)
		(= (dummy_3_value d3_3) 33.612050752682514)
		(= (dummy_3_value d3_4) 18.080523042943188)

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

