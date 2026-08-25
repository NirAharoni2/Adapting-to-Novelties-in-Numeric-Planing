;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -6.0)
		(= (x b1) 4.0)
		(= (y b1) -7.0)

		(= (d p0) -123.0)

        (= (engine_value e0) 9.2)
		(= (engine_value e1) 8.8)

        (= (dummy_1_value d1_0) -106.0)
		(= (dummy_1_value d1_1) -75.0)
		(= (dummy_1_value d1_2) -109.0)

        (= (dummy_2_value d2_0) -12.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) -13.0)
		(= (dummy_2_value d2_3) -8.0)
		(= (dummy_2_value d2_4) 5.0)

        (= (dummy_3_value d3_0) 468.0)
		(= (dummy_3_value d3_1) -1155.0)
		(= (dummy_3_value d3_2) 597.0)
		(= (dummy_3_value d3_3) 514.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

