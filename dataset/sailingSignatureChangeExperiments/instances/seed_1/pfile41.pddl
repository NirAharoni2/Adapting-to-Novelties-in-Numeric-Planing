;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 8.0)
		(= (x b1) 10.0)
		(= (y b1) 8.0)

		(= (d p0) 69.0)

        (= (engine_value e0) 2.3)
		(= (engine_value e1) 3.34)

        (= (dummy_1_value d1_0) 103.0)
		(= (dummy_1_value d1_1) -107.0)

        (= (dummy_2_value d2_0) -8.0)
		(= (dummy_2_value d2_1) -10.0)
		(= (dummy_2_value d2_2) 13.0)
		(= (dummy_2_value d2_3) -15.0)

        (= (dummy_3_value d3_0) 963.0)
		(= (dummy_3_value d3_1) -733.0)
		(= (dummy_3_value d3_2) 803.0)
		(= (dummy_3_value d3_3) -1419.0)
		(= (dummy_3_value d3_4) 1339.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

