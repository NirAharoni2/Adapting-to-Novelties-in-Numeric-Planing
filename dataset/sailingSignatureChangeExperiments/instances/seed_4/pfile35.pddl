;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 9.0)
		(= (x b1) 3.0)
		(= (y b1) 5.0)

		(= (d p0) -74.0)

        (= (engine_value e0) 7.85)
		(= (engine_value e1) 3.63)

        (= (dummy_1_value d1_0) -143.0)
		(= (dummy_1_value d1_1) 131.0)
		(= (dummy_1_value d1_2) -136.0)
		(= (dummy_1_value d1_3) -46.0)
		(= (dummy_1_value d1_4) -90.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) 9.0)

        (= (dummy_3_value d3_0) -558.0)
		(= (dummy_3_value d3_1) 1481.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

