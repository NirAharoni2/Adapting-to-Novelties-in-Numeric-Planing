;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 6.0)
		(= (x b1) -6.0)
		(= (y b1) 6.0)

		(= (d p0) 120.0)

        (= (engine_value e0) 4.89)
		(= (engine_value e1) 4.4)

        (= (dummy_1_value d1_0) 87.0)
		(= (dummy_1_value d1_1) -82.0)
		(= (dummy_1_value d1_2) 106.0)
		(= (dummy_1_value d1_3) -127.0)
		(= (dummy_1_value d1_4) -85.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -12.0)
		(= (dummy_2_value d2_2) -9.0)

        (= (dummy_3_value d3_0) 1011.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

