;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -9.0)
		(= (x b1) -4.0)
		(= (y b1) 4.0)

		(= (d p0) -48.0)

        (= (engine_value e0) 4.48)
		(= (engine_value e1) 6.17)

        (= (dummy_1_value d1_0) -51.0)
		(= (dummy_1_value d1_1) 117.0)

        (= (dummy_2_value d2_0) -5.0)
		(= (dummy_2_value d2_1) -8.0)
		(= (dummy_2_value d2_2) -8.0)
		(= (dummy_2_value d2_3) 9.0)
		(= (dummy_2_value d2_4) 8.0)

        (= (dummy_3_value d3_0) -1306.0)
		(= (dummy_3_value d3_1) -1088.0)
		(= (dummy_3_value d3_2) -782.0)
		(= (dummy_3_value d3_3) -1266.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

