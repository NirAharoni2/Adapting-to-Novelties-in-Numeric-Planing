;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -10.0)
		(= (x b1) -7.0)
		(= (y b1) 6.0)

		(= (d p0) -124.0)

        (= (engine_value e0) 7.85)
		(= (engine_value e1) 5.27)

        (= (dummy_1_value d1_0) -59.0)
		(= (dummy_1_value d1_1) -70.0)
		(= (dummy_1_value d1_2) -85.0)
		(= (dummy_1_value d1_3) -136.0)
		(= (dummy_1_value d1_4) 46.0)

        (= (dummy_2_value d2_0) 15.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) -13.0)

        (= (dummy_3_value d3_0) 1107.0)
		(= (dummy_3_value d3_1) -483.0)
		(= (dummy_3_value d3_2) -487.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

