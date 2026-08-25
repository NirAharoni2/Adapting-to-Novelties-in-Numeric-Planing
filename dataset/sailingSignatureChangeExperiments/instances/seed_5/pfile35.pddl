;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)

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
		(= (x b0) 5.0)
		(= (y b0) -10.0)
		(= (x b1) 4.0)
		(= (y b1) 5.0)

		(= (d p0) 112.0)

        (= (engine_value e0) 5.91)
		(= (engine_value e1) 8.99)

        (= (dummy_1_value d1_0) 75.0)
		(= (dummy_1_value d1_1) -58.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) -5.0)
		(= (dummy_2_value d2_2) -8.0)
		(= (dummy_2_value d2_3) 12.0)

        (= (dummy_3_value d3_0) -509.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

