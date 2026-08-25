;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 7.0)
		(= (x b1) 8.0)
		(= (y b1) 9.0)

		(= (d p0) 45.0)

        (= (engine_value e0) 5.41)
		(= (engine_value e1) 5.71)

        (= (dummy_1_value d1_0) -130.0)
		(= (dummy_1_value d1_1) -57.0)
		(= (dummy_1_value d1_2) 94.0)
		(= (dummy_1_value d1_3) -142.0)
		(= (dummy_1_value d1_4) 118.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) 13.0)

        (= (dummy_3_value d3_0) -816.0)
		(= (dummy_3_value d3_1) -972.0)
		(= (dummy_3_value d3_2) 1181.0)
		(= (dummy_3_value d3_3) -939.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

