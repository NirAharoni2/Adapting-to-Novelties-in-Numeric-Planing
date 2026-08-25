;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 8.0)
		(= (x b1) 4.0)
		(= (y b1) -7.0)

		(= (d p0) 60.0)

        (= (engine_value e0) 3.51)
		(= (engine_value e1) 2.95)

        (= (dummy_1_value d1_0) 125.0)

        (= (dummy_2_value d2_0) -8.0)
		(= (dummy_2_value d2_1) 7.0)

        (= (dummy_3_value d3_0) -1033.0)
		(= (dummy_3_value d3_1) 1272.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

