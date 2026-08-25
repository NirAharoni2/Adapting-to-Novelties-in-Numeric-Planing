;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 9.0)
		(= (x b1) 4.0)
		(= (y b1) -7.0)

		(= (d p0) -84.0)

        (= (engine_value e0) 5.39)
		(= (engine_value e1) 9.91)

        (= (dummy_1_value d1_0) 82.0)
		(= (dummy_1_value d1_1) -116.0)
		(= (dummy_1_value d1_2) 97.0)
		(= (dummy_1_value d1_3) -49.0)
		(= (dummy_1_value d1_4) 143.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) -10.0)
		(= (dummy_2_value d2_2) 10.0)
		(= (dummy_2_value d2_3) 5.0)

        (= (dummy_3_value d3_0) 1377.0)
		(= (dummy_3_value d3_1) -1294.0)
		(= (dummy_3_value d3_2) 1431.0)
		(= (dummy_3_value d3_3) -1434.0)
		(= (dummy_3_value d3_4) -1460.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

