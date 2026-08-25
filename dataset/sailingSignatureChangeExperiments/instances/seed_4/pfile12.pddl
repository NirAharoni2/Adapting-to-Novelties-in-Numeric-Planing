;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)

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
		(= (x b0) -4.0)
		(= (y b0) -10.0)
		(= (x b1) -4.0)
		(= (y b1) -7.0)

		(= (d p0) 135.0)

        (= (engine_value e0) 4.63)
		(= (engine_value e1) 5.09)

        (= (dummy_1_value d1_0) -147.0)
		(= (dummy_1_value d1_1) 47.0)
		(= (dummy_1_value d1_2) 61.0)
		(= (dummy_1_value d1_3) -61.0)
		(= (dummy_1_value d1_4) 69.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) 6.0)

        (= (dummy_3_value d3_0) 1496.0)
		(= (dummy_3_value d3_1) 1417.0)
		(= (dummy_3_value d3_2) 848.0)
		(= (dummy_3_value d3_3) 1325.0)
		(= (dummy_3_value d3_4) 563.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

