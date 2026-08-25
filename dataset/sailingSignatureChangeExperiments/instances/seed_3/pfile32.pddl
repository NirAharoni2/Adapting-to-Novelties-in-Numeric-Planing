;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -8.0)
		(= (x b1) 8.0)
		(= (y b1) 6.0)

		(= (d p0) 91.0)

        (= (engine_value e0) 6.28)
		(= (engine_value e1) 8.66)

        (= (dummy_1_value d1_0) -88.0)
		(= (dummy_1_value d1_1) 134.0)
		(= (dummy_1_value d1_2) -49.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) -5.0)
		(= (dummy_2_value d2_3) -6.0)
		(= (dummy_2_value d2_4) -15.0)

        (= (dummy_3_value d3_0) 1284.0)
		(= (dummy_3_value d3_1) 1170.0)
		(= (dummy_3_value d3_2) 1254.0)
		(= (dummy_3_value d3_3) -933.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

