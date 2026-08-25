;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -5.0)
		(= (x b1) -7.0)
		(= (y b1) -7.0)

		(= (d p0) 124.0)

        (= (engine_value e0) 8.53)
		(= (engine_value e1) 4.39)

        (= (dummy_1_value d1_0) -86.0)
		(= (dummy_1_value d1_1) -107.0)
		(= (dummy_1_value d1_2) 124.0)
		(= (dummy_1_value d1_3) 76.0)
		(= (dummy_1_value d1_4) 128.0)

        (= (dummy_2_value d2_0) 9.0)

        (= (dummy_3_value d3_0) -1481.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

