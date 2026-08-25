;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 6.0)
		(= (x b1) -8.0)
		(= (y b1) -7.0)

		(= (d p0) 126.0)

        (= (engine_value e0) 3.97)
		(= (engine_value e1) 8.32)

        (= (dummy_1_value d1_0) 87.0)
		(= (dummy_1_value d1_1) -67.0)

        (= (dummy_2_value d2_0) -8.0)
		(= (dummy_2_value d2_1) 15.0)

        (= (dummy_3_value d3_0) -1367.0)
		(= (dummy_3_value d3_1) 1123.0)
		(= (dummy_3_value d3_2) -1396.0)
		(= (dummy_3_value d3_3) 499.0)
		(= (dummy_3_value d3_4) 1277.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

