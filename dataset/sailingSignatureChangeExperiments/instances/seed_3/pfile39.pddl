;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -5.0)
		(= (x b1) -5.0)
		(= (y b1) 4.0)

		(= (d p0) 134.0)

        (= (engine_value e0) 5.82)
		(= (engine_value e1) 6.31)

        (= (dummy_1_value d1_0) 92.0)
		(= (dummy_1_value d1_1) -89.0)
		(= (dummy_1_value d1_2) 66.0)
		(= (dummy_1_value d1_3) -70.0)
		(= (dummy_1_value d1_4) 77.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 15.0)
		(= (dummy_2_value d2_2) 12.0)
		(= (dummy_2_value d2_3) -15.0)

        (= (dummy_3_value d3_0) 1222.0)
		(= (dummy_3_value d3_1) -997.0)
		(= (dummy_3_value d3_2) 712.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

