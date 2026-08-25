;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -6.0)
		(= (x b1) -4.0)
		(= (y b1) -4.0)

		(= (d p0) -97.0)

        (= (engine_value e0) 8.36)
		(= (engine_value e1) 2.62)

        (= (dummy_1_value d1_0) 63.0)
		(= (dummy_1_value d1_1) 148.0)

        (= (dummy_2_value d2_0) 8.0)
		(= (dummy_2_value d2_1) -10.0)
		(= (dummy_2_value d2_2) 8.0)
		(= (dummy_2_value d2_3) 6.0)

        (= (dummy_3_value d3_0) 483.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

