;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 7.0)
		(= (x b1) 6.0)
		(= (y b1) 9.0)

		(= (d p0) -143.0)

        (= (engine_value e0) 4.96)
		(= (engine_value e1) 7.01)

        (= (dummy_1_value d1_0) -69.0)
		(= (dummy_1_value d1_1) 106.0)

        (= (dummy_2_value d2_0) -5.0)
		(= (dummy_2_value d2_1) 10.0)

        (= (dummy_3_value d3_0) 553.0)
		(= (dummy_3_value d3_1) 481.0)
		(= (dummy_3_value d3_2) 511.0)
		(= (dummy_3_value d3_3) 1282.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

