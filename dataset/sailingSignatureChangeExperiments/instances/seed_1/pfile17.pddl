;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 6.0)
		(= (x b1) 7.0)
		(= (y b1) 8.0)

		(= (d p0) 126.0)

        (= (engine_value e0) 8.52)
		(= (engine_value e1) 6.84)

        (= (dummy_1_value d1_0) -122.0)
		(= (dummy_1_value d1_1) 137.0)
		(= (dummy_1_value d1_2) 61.0)
		(= (dummy_1_value d1_3) 96.0)
		(= (dummy_1_value d1_4) -145.0)

        (= (dummy_2_value d2_0) 12.0)

        (= (dummy_3_value d3_0) -1127.0)
		(= (dummy_3_value d3_1) 471.0)
		(= (dummy_3_value d3_2) 1443.0)
		(= (dummy_3_value d3_3) 872.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

