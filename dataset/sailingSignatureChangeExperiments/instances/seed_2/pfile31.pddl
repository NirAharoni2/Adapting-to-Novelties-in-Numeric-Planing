;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -4.0)
		(= (x b1) 10.0)
		(= (y b1) 8.0)

		(= (d p0) 59.0)

        (= (engine_value e0) 9.94)
		(= (engine_value e1) 3.83)

        (= (dummy_1_value d1_0) 123.0)
		(= (dummy_1_value d1_1) 149.0)
		(= (dummy_1_value d1_2) 115.0)

        (= (dummy_2_value d2_0) -8.0)

        (= (dummy_3_value d3_0) -481.0)
		(= (dummy_3_value d3_1) -978.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

