;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -7.0)
		(= (x b1) 4.0)
		(= (y b1) 6.0)

		(= (d p0) 130.0)

        (= (engine_value e0) 6.34)
		(= (engine_value e1) 8.55)

        (= (dummy_1_value d1_0) 120.0)

        (= (dummy_2_value d2_0) -13.0)

        (= (dummy_3_value d3_0) -1471.0)
		(= (dummy_3_value d3_1) 1422.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

