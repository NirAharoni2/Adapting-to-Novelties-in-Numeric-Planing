;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 9.0)
		(= (x b1) -8.0)
		(= (y b1) 3.0)

		(= (d p0) -99.0)

        (= (engine_value e0) 4.14)
		(= (engine_value e1) 6.37)

        (= (dummy_1_value d1_0) -125.0)
		(= (dummy_1_value d1_1) 60.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) 12.0)

        (= (dummy_3_value d3_0) 599.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

