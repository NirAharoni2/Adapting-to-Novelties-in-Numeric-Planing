;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -7.0)
		(= (x b1) -6.0)
		(= (y b1) 6.0)

		(= (d p0) 103.0)

        (= (engine_value e0) 9.38)
		(= (engine_value e1) 4.23)

        (= (dummy_1_value d1_0) -146.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) 8.0)

        (= (dummy_3_value d3_0) -776.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

