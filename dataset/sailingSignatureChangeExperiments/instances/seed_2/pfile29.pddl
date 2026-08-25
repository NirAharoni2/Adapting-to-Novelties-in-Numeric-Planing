;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -4.0)
		(= (x b1) 9.0)
		(= (y b1) 5.0)

		(= (d p0) 101.0)

        (= (engine_value e0) 9.29)
		(= (engine_value e1) 9.17)

        (= (dummy_1_value d1_0) 76.0)
		(= (dummy_1_value d1_1) 102.0)
		(= (dummy_1_value d1_2) 53.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) -5.0)
		(= (dummy_2_value d2_2) 12.0)
		(= (dummy_2_value d2_3) -14.0)

        (= (dummy_3_value d3_0) 1346.0)
		(= (dummy_3_value d3_1) -1178.0)
		(= (dummy_3_value d3_2) 564.0)
		(= (dummy_3_value d3_3) -645.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

