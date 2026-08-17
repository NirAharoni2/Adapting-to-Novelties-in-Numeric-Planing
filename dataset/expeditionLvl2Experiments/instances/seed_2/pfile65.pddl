;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.394287927583548)

        (= (sled_supplies s0) 4.019559361783683)

        (= (factor_value f0) 0.7305919882914916)
		(= (factor_value f1) 0.9151937278302751)
		(= (factor_value f2) 0.5853460451873884)

        (= (dummy_1_value d1_0) 0.5868313211927455)
		(= (dummy_1_value d1_1) 0.8082467650761334)
		(= (dummy_1_value d1_2) 0.5725303803251343)
		(= (dummy_1_value d1_3) 0.7726571591628806)

        (= (dummy_2_value d2_0) 2.119334538634558)
		(= (dummy_2_value d2_1) 2.681663850306031)
		(= (dummy_2_value d2_2) 4.008379426121868)
		(= (dummy_2_value d2_3) 8.047948766437168)
		(= (dummy_2_value d2_4) 6.500458044526909)

        (= (dummy_3_value d3_0) 61.22390052722898)
		(= (dummy_3_value d3_1) 63.14823327159729)
		(= (dummy_3_value d3_2) 40.27830807912823)
		(= (dummy_3_value d3_3) 97.64233623705236)
		(= (dummy_3_value d3_4) 59.92858530681909)

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

