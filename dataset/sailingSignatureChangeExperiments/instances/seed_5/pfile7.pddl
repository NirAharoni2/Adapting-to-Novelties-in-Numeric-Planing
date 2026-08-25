;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 3.0)
		(= (x b1) -8.0)
		(= (y b1) -9.0)

		(= (d p0) 84.0)

        (= (engine_value e0) 2.29)
		(= (engine_value e1) 6.91)

        (= (dummy_1_value d1_0) -93.0)
		(= (dummy_1_value d1_1) -89.0)
		(= (dummy_1_value d1_2) 131.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) -9.0)
		(= (dummy_2_value d2_3) 15.0)

        (= (dummy_3_value d3_0) 1089.0)
		(= (dummy_3_value d3_1) -562.0)
		(= (dummy_3_value d3_2) -1387.0)
		(= (dummy_3_value d3_3) 1096.0)
		(= (dummy_3_value d3_4) -839.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

