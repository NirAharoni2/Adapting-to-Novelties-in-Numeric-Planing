;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 5.0)
		(= (x b1) 3.0)
		(= (y b1) 5.0)

		(= (d p0) 105.0)

        (= (engine_value e0) 8.91)
		(= (engine_value e1) 4.72)

        (= (dummy_1_value d1_0) 54.0)
		(= (dummy_1_value d1_1) 107.0)
		(= (dummy_1_value d1_2) -96.0)
		(= (dummy_1_value d1_3) 94.0)

        (= (dummy_2_value d2_0) 8.0)
		(= (dummy_2_value d2_1) 5.0)

        (= (dummy_3_value d3_0) -1290.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

