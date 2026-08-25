;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 6.0)
		(= (x b1) -9.0)
		(= (y b1) 10.0)

		(= (d p0) -53.0)

        (= (engine_value e0) 9.75)
		(= (engine_value e1) 8.63)

        (= (dummy_1_value d1_0) -103.0)
		(= (dummy_1_value d1_1) 126.0)
		(= (dummy_1_value d1_2) -116.0)
		(= (dummy_1_value d1_3) 139.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) -12.0)
		(= (dummy_2_value d2_3) -9.0)
		(= (dummy_2_value d2_4) -6.0)

        (= (dummy_3_value d3_0) 699.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

