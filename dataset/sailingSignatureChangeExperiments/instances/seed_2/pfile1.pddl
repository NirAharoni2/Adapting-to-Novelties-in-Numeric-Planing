;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 5.0)
		(= (x b1) 7.0)
		(= (y b1) 4.0)

		(= (d p0) -109.0)

        (= (engine_value e0) 7.78)
		(= (engine_value e1) 9.96)

        (= (dummy_1_value d1_0) 102.0)

        (= (dummy_2_value d2_0) -12.0)

        (= (dummy_3_value d3_0) -1471.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

