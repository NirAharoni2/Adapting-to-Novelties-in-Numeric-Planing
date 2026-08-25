;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 9.0)
		(= (x b1) 8.0)
		(= (y b1) -8.0)

		(= (d p0) 132.0)

        (= (engine_value e0) 6.5)
		(= (engine_value e1) 6.06)

        (= (dummy_1_value d1_0) 88.0)
		(= (dummy_1_value d1_1) 96.0)
		(= (dummy_1_value d1_2) -78.0)
		(= (dummy_1_value d1_3) 127.0)
		(= (dummy_1_value d1_4) -149.0)

        (= (dummy_2_value d2_0) 15.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) -9.0)
		(= (dummy_2_value d2_3) 14.0)

        (= (dummy_3_value d3_0) 593.0)
		(= (dummy_3_value d3_1) -634.0)
		(= (dummy_3_value d3_2) 513.0)
		(= (dummy_3_value d3_3) 1247.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

