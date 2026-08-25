;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 6.0)
		(= (x b1) 10.0)
		(= (y b1) -7.0)

		(= (d p0) -101.0)

        (= (engine_value e0) 4.29)
		(= (engine_value e1) 7.33)

        (= (dummy_1_value d1_0) -132.0)
		(= (dummy_1_value d1_1) -142.0)
		(= (dummy_1_value d1_2) -56.0)
		(= (dummy_1_value d1_3) 66.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) -13.0)
		(= (dummy_2_value d2_3) 14.0)

        (= (dummy_3_value d3_0) -1306.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

