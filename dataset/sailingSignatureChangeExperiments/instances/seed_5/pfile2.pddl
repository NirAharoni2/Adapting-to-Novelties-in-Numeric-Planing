;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) -8.0)
		(= (x b1) 7.0)
		(= (y b1) 8.0)

		(= (d p0) -113.0)

        (= (engine_value e0) 4.45)
		(= (engine_value e1) 7.57)

        (= (dummy_1_value d1_0) -100.0)
		(= (dummy_1_value d1_1) -123.0)
		(= (dummy_1_value d1_2) 145.0)
		(= (dummy_1_value d1_3) -108.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) -8.0)

        (= (dummy_3_value d3_0) 1452.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

