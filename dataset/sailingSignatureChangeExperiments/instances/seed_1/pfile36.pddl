;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -3.0)
		(= (x b1) -8.0)
		(= (y b1) 8.0)

		(= (d p0) -82.0)

        (= (engine_value e0) 7.31)
		(= (engine_value e1) 9.49)

        (= (dummy_1_value d1_0) -108.0)
		(= (dummy_1_value d1_1) -99.0)
		(= (dummy_1_value d1_2) -137.0)
		(= (dummy_1_value d1_3) -106.0)

        (= (dummy_2_value d2_0) 11.0)
		(= (dummy_2_value d2_1) 9.0)

        (= (dummy_3_value d3_0) -973.0)
		(= (dummy_3_value d3_1) 1414.0)
		(= (dummy_3_value d3_2) -949.0)
		(= (dummy_3_value d3_3) -1233.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

