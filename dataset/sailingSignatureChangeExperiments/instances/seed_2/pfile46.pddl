;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -5.0)
		(= (x b1) -8.0)
		(= (y b1) 9.0)

		(= (d p0) 76.0)

        (= (engine_value e0) 4.6)
		(= (engine_value e1) 8.12)

        (= (dummy_1_value d1_0) 94.0)
		(= (dummy_1_value d1_1) 54.0)
		(= (dummy_1_value d1_2) -55.0)

        (= (dummy_2_value d2_0) -12.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) 12.0)

        (= (dummy_3_value d3_0) -851.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

