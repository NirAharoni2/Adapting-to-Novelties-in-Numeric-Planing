;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 9.0)
		(= (x b1) 4.0)
		(= (y b1) -8.0)

		(= (d p0) -98.0)

        (= (engine_value e0) 8.96)
		(= (engine_value e1) 5.69)

        (= (dummy_1_value d1_0) -75.0)
		(= (dummy_1_value d1_1) 68.0)
		(= (dummy_1_value d1_2) -133.0)
		(= (dummy_1_value d1_3) 94.0)
		(= (dummy_1_value d1_4) 134.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -12.0)

        (= (dummy_3_value d3_0) 847.0)
		(= (dummy_3_value d3_1) 1237.0)
		(= (dummy_3_value d3_2) -744.0)
		(= (dummy_3_value d3_3) 1060.0)
		(= (dummy_3_value d3_4) 787.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

