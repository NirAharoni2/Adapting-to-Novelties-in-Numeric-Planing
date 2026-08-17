;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.167981330646206)

        (= (sled_supplies s0) 0.8144133711868651)

        (= (factor_value f0) 0.6250236868174174)
		(= (factor_value f1) 0.7994048333235593)
		(= (factor_value f2) 0.5794523296181382)
		(= (factor_value f3) 0.7865450308076906)

        (= (dummy_1_value d1_0) 0.6816624181151285)
		(= (dummy_1_value d1_1) 0.7273926666735375)
		(= (dummy_1_value d1_2) 0.6825954123725952)
		(= (dummy_1_value d1_3) 0.9021745374900261)
		(= (dummy_1_value d1_4) 0.9985926311103039)

        (= (dummy_2_value d2_0) 6.143101795568465)

        (= (dummy_3_value d3_0) 44.49335027629968)
		(= (dummy_3_value d3_1) 21.516435801769035)
		(= (dummy_3_value d3_2) 91.73645079570835)

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

