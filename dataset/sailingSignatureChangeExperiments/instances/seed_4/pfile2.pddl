;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -3.0)
		(= (x b1) 7.0)
		(= (y b1) -4.0)

		(= (d p0) 138.0)

        (= (engine_value e0) 8.78)
		(= (engine_value e1) 6.07)

        (= (dummy_1_value d1_0) -87.0)
		(= (dummy_1_value d1_1) -133.0)
		(= (dummy_1_value d1_2) -65.0)

        (= (dummy_2_value d2_0) -15.0)
		(= (dummy_2_value d2_1) 7.0)
		(= (dummy_2_value d2_2) 9.0)
		(= (dummy_2_value d2_3) -5.0)

        (= (dummy_3_value d3_0) -1067.0)
		(= (dummy_3_value d3_1) -836.0)
		(= (dummy_3_value d3_2) -1126.0)
		(= (dummy_3_value d3_3) 787.0)
		(= (dummy_3_value d3_4) 1400.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

