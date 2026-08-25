;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -4.0)
		(= (x b1) -6.0)
		(= (y b1) 7.0)

		(= (d p0) -45.0)

        (= (engine_value e0) 7.82)
		(= (engine_value e1) 8.33)

        (= (dummy_1_value d1_0) 143.0)
		(= (dummy_1_value d1_1) 132.0)
		(= (dummy_1_value d1_2) 72.0)
		(= (dummy_1_value d1_3) -123.0)

        (= (dummy_2_value d2_0) -8.0)
		(= (dummy_2_value d2_1) -5.0)

        (= (dummy_3_value d3_0) -678.0)
		(= (dummy_3_value d3_1) -1160.0)
		(= (dummy_3_value d3_2) -495.0)
		(= (dummy_3_value d3_3) 941.0)
		(= (dummy_3_value d3_4) -1450.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

