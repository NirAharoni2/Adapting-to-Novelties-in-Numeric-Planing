;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 3.0)
		(= (x b1) -6.0)
		(= (y b1) -9.0)

		(= (d p0) -84.0)

        (= (engine_value e0) 6.21)
		(= (engine_value e1) 2.63)

        (= (dummy_1_value d1_0) -61.0)
		(= (dummy_1_value d1_1) 63.0)

        (= (dummy_2_value d2_0) 5.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) 7.0)
		(= (dummy_2_value d2_3) 11.0)
		(= (dummy_2_value d2_4) 14.0)

        (= (dummy_3_value d3_0) -791.0)
		(= (dummy_3_value d3_1) 1442.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

