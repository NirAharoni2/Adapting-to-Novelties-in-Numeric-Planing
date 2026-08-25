;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 6.0)
		(= (x b1) 9.0)
		(= (y b1) -8.0)

		(= (d p0) 93.0)

        (= (engine_value e0) 5.47)
		(= (engine_value e1) 5.53)

        (= (dummy_1_value d1_0) 143.0)
		(= (dummy_1_value d1_1) 147.0)
		(= (dummy_1_value d1_2) 56.0)
		(= (dummy_1_value d1_3) 89.0)
		(= (dummy_1_value d1_4) -47.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -6.0)

        (= (dummy_3_value d3_0) -1274.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

