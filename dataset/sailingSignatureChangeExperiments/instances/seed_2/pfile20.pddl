;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -6.0)
		(= (x b1) -9.0)
		(= (y b1) 8.0)

		(= (d p0) 92.0)

        (= (engine_value e0) 4.23)
		(= (engine_value e1) 2.66)

        (= (dummy_1_value d1_0) -67.0)
		(= (dummy_1_value d1_1) -91.0)
		(= (dummy_1_value d1_2) 135.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) 9.0)
		(= (dummy_2_value d2_3) -8.0)

        (= (dummy_3_value d3_0) 725.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

