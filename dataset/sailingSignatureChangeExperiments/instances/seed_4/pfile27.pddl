;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)

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
		(= (x b0) 6.0)
		(= (y b0) 5.0)
		(= (x b1) 5.0)
		(= (y b1) -7.0)

		(= (d p0) 138.0)

        (= (engine_value e0) 4.29)
		(= (engine_value e1) 9.41)

        (= (dummy_1_value d1_0) 62.0)
		(= (dummy_1_value d1_1) 143.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) 11.0)
		(= (dummy_2_value d2_3) -6.0)

        (= (dummy_3_value d3_0) 525.0)
		(= (dummy_3_value d3_1) -1415.0)
		(= (dummy_3_value d3_2) -1401.0)
		(= (dummy_3_value d3_3) 743.0)
		(= (dummy_3_value d3_4) 1257.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

