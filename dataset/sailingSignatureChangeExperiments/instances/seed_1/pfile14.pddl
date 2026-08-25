;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -9.0)
		(= (x b1) 4.0)
		(= (y b1) 10.0)

		(= (d p0) 147.0)

        (= (engine_value e0) 7.49)
		(= (engine_value e1) 2.66)

        (= (dummy_1_value d1_0) 70.0)
		(= (dummy_1_value d1_1) 144.0)
		(= (dummy_1_value d1_2) 87.0)
		(= (dummy_1_value d1_3) 91.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) -10.0)
		(= (dummy_2_value d2_2) 14.0)
		(= (dummy_2_value d2_3) 7.0)
		(= (dummy_2_value d2_4) -9.0)

        (= (dummy_3_value d3_0) 1005.0)
		(= (dummy_3_value d3_1) 482.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

