;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -9.0)
		(= (x b1) -8.0)
		(= (y b1) 3.0)

		(= (d p0) 98.0)

        (= (engine_value e0) 5.63)
		(= (engine_value e1) 5.12)

        (= (dummy_1_value d1_0) -49.0)
		(= (dummy_1_value d1_1) -94.0)
		(= (dummy_1_value d1_2) 85.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) -7.0)
		(= (dummy_2_value d2_2) 5.0)
		(= (dummy_2_value d2_3) 10.0)
		(= (dummy_2_value d2_4) -8.0)

        (= (dummy_3_value d3_0) -622.0)
		(= (dummy_3_value d3_1) -523.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

