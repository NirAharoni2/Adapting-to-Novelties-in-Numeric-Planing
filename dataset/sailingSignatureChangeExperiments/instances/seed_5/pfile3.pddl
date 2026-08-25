;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -7.0)
		(= (x b1) 8.0)
		(= (y b1) -8.0)

		(= (d p0) -47.0)

        (= (engine_value e0) 3.67)
		(= (engine_value e1) 6.1)

        (= (dummy_1_value d1_0) -134.0)

        (= (dummy_2_value d2_0) -8.0)
		(= (dummy_2_value d2_1) -8.0)

        (= (dummy_3_value d3_0) -661.0)
		(= (dummy_3_value d3_1) 1207.0)
		(= (dummy_3_value d3_2) -992.0)
		(= (dummy_3_value d3_3) 535.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

