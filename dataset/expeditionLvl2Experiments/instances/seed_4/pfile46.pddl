;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.996013651741427)

        (= (sled_supplies s0) 3.705198427351908)

        (= (factor_value f0) 0.7191237671927911)
		(= (factor_value f1) 0.6990266053994929)

        (= (dummy_1_value d1_0) 0.5135140396215571)
		(= (dummy_1_value d1_1) 0.8690318991574133)
		(= (dummy_1_value d1_2) 0.5690775419453223)

        (= (dummy_2_value d2_0) 4.663310579183876)

        (= (dummy_3_value d3_0) 25.852904184922775)
		(= (dummy_3_value d3_1) 17.73148658957562)
		(= (dummy_3_value d3_2) 73.60022575284988)
		(= (dummy_3_value d3_3) 94.74028809382398)

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

