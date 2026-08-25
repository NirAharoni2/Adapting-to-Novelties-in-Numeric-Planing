;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -9.0)
		(= (x b1) -3.0)
		(= (y b1) 7.0)

		(= (d p0) -109.0)

        (= (engine_value e0) 8.23)
		(= (engine_value e1) 5.48)

        (= (dummy_1_value d1_0) 140.0)

        (= (dummy_2_value d2_0) 11.0)

        (= (dummy_3_value d3_0) -1475.0)
		(= (dummy_3_value d3_1) 884.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

