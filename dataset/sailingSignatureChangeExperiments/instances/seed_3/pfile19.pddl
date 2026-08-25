;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)

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
		(= (x b0) -7.0)
		(= (y b0) -7.0)
		(= (x b1) 6.0)
		(= (y b1) -10.0)

		(= (d p0) -61.0)

        (= (engine_value e0) 5.58)
		(= (engine_value e1) 4.89)

        (= (dummy_1_value d1_0) -48.0)
		(= (dummy_1_value d1_1) 72.0)
		(= (dummy_1_value d1_2) -60.0)
		(= (dummy_1_value d1_3) 62.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) -9.0)
		(= (dummy_2_value d2_3) -13.0)

        (= (dummy_3_value d3_0) 873.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

