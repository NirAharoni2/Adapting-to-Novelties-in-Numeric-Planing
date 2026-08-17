;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.026433373598695)

        (= (sled_supplies s0) 2.7300019933165927)

        (= (factor_value f0) 0.848308674038861)

        (= (dummy_1_value d1_0) 0.5009684249475215)
		(= (dummy_1_value d1_1) 0.9731839907251524)

        (= (dummy_2_value d2_0) 5.696212198838252)
		(= (dummy_2_value d2_1) 4.179442106592922)
		(= (dummy_2_value d2_2) 3.4103714653027946)

        (= (dummy_3_value d3_0) 22.33935823030761)
		(= (dummy_3_value d3_1) 84.23349467120698)
		(= (dummy_3_value d3_2) 58.81224937163662)

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

