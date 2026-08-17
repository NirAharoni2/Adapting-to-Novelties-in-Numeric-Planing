;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.738934510793886)

        (= (sled_supplies s0) 6.628063667730583)

        (= (factor_value f0) 0.8990208990252521)
		(= (factor_value f1) 0.6989250471922823)

        (= (dummy_1_value d1_0) 0.747788060347812)
		(= (dummy_1_value d1_1) 0.6399648033042249)
		(= (dummy_1_value d1_2) 0.5868939995640521)

        (= (dummy_2_value d2_0) 9.876581151434353)
		(= (dummy_2_value d2_1) 4.506527632391249)
		(= (dummy_2_value d2_2) 2.856697218706352)
		(= (dummy_2_value d2_3) 8.221554664897576)

        (= (dummy_3_value d3_0) 11.395017036200409)
		(= (dummy_3_value d3_1) 41.89772025568761)
		(= (dummy_3_value d3_2) 12.393551233756856)
		(= (dummy_3_value d3_3) 4.416480633410189)

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

