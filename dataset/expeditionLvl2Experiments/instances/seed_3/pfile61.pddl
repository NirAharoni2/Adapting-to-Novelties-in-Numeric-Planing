;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.624273926809336)

        (= (sled_supplies s0) 2.166132534906485)

        (= (factor_value f0) 0.7942177852205956)
		(= (factor_value f1) 0.6116513840722324)
		(= (factor_value f2) 0.7270607671475774)
		(= (factor_value f3) 0.7552911500087334)
		(= (factor_value f4) 0.8200549735200373)

        (= (dummy_1_value d1_0) 0.9930001966706363)
		(= (dummy_1_value d1_1) 0.6906493777868588)
		(= (dummy_1_value d1_2) 0.9490434033257018)
		(= (dummy_1_value d1_3) 0.6045639087319813)
		(= (dummy_1_value d1_4) 0.7931099698937376)

        (= (dummy_2_value d2_0) 6.731342366157583)
		(= (dummy_2_value d2_1) 8.200030956911602)

        (= (dummy_3_value d3_0) 18.597373654309305)
		(= (dummy_3_value d3_1) 45.75084896765832)
		(= (dummy_3_value d3_2) 53.516304976289845)

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

