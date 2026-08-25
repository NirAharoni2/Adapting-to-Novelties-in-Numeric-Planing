;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -5.0)
		(= (x b1) 6.0)
		(= (y b1) 4.0)

		(= (d p0) 145.0)

        (= (engine_value e0) 8.05)
		(= (engine_value e1) 2.77)

        (= (dummy_1_value d1_0) 120.0)
		(= (dummy_1_value d1_1) -56.0)
		(= (dummy_1_value d1_2) -76.0)
		(= (dummy_1_value d1_3) -46.0)

        (= (dummy_2_value d2_0) 11.0)

        (= (dummy_3_value d3_0) -1037.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

