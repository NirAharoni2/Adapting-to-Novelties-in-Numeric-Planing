;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 6.0)
		(= (x b1) -6.0)
		(= (y b1) 6.0)

		(= (d p0) 141.0)

        (= (engine_value e0) 4.61)
		(= (engine_value e1) 8.49)

        (= (dummy_1_value d1_0) 60.0)
		(= (dummy_1_value d1_1) -51.0)
		(= (dummy_1_value d1_2) -103.0)
		(= (dummy_1_value d1_3) 105.0)
		(= (dummy_1_value d1_4) 75.0)

        (= (dummy_2_value d2_0) 7.0)
		(= (dummy_2_value d2_1) -7.0)
		(= (dummy_2_value d2_2) 6.0)
		(= (dummy_2_value d2_3) -8.0)

        (= (dummy_3_value d3_0) 558.0)
		(= (dummy_3_value d3_1) 590.0)
		(= (dummy_3_value d3_2) -1406.0)
		(= (dummy_3_value d3_3) -849.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

