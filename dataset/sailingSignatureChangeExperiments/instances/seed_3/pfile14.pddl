;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 4.0)
		(= (x b1) -4.0)
		(= (y b1) -8.0)

		(= (d p0) 116.0)

        (= (engine_value e0) 2.06)
		(= (engine_value e1) 4.68)

        (= (dummy_1_value d1_0) -99.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) 9.0)
		(= (dummy_2_value d2_2) 6.0)

        (= (dummy_3_value d3_0) -801.0)
		(= (dummy_3_value d3_1) -568.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

