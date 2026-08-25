;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -6.0)
		(= (x b1) -3.0)
		(= (y b1) -6.0)

		(= (d p0) -68.0)

        (= (engine_value e0) 8.61)
		(= (engine_value e1) 4.09)

        (= (dummy_1_value d1_0) 48.0)
		(= (dummy_1_value d1_1) 72.0)

        (= (dummy_2_value d2_0) -13.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) 13.0)

        (= (dummy_3_value d3_0) -613.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

