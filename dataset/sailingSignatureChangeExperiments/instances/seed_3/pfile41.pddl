;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -5.0)
		(= (x b1) 5.0)
		(= (y b1) -3.0)

		(= (d p0) -70.0)

        (= (engine_value e0) 3.32)
		(= (engine_value e1) 7.34)

        (= (dummy_1_value d1_0) -97.0)
		(= (dummy_1_value d1_1) -59.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) 9.0)

        (= (dummy_3_value d3_0) 720.0)
		(= (dummy_3_value d3_1) 1065.0)
		(= (dummy_3_value d3_2) -1451.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

