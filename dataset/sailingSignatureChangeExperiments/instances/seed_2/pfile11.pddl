;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -4.0)
		(= (x b1) -6.0)
		(= (y b1) -8.0)

		(= (d p0) 94.0)

        (= (engine_value e0) 3.64)
		(= (engine_value e1) 9.73)

        (= (dummy_1_value d1_0) -150.0)
		(= (dummy_1_value d1_1) -62.0)
		(= (dummy_1_value d1_2) 124.0)
		(= (dummy_1_value d1_3) -79.0)

        (= (dummy_2_value d2_0) -12.0)
		(= (dummy_2_value d2_1) 5.0)
		(= (dummy_2_value d2_2) -7.0)
		(= (dummy_2_value d2_3) -7.0)
		(= (dummy_2_value d2_4) 9.0)

        (= (dummy_3_value d3_0) 1277.0)
		(= (dummy_3_value d3_1) 592.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

