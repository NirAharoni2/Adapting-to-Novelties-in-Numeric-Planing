;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -6.0)
		(= (x b1) -7.0)
		(= (y b1) 7.0)

		(= (d p0) -123.0)

        (= (engine_value e0) 5.64)
		(= (engine_value e1) 9.33)

        (= (dummy_1_value d1_0) 102.0)

        (= (dummy_2_value d2_0) -7.0)
		(= (dummy_2_value d2_1) -9.0)

        (= (dummy_3_value d3_0) 1114.0)
		(= (dummy_3_value d3_1) -543.0)
		(= (dummy_3_value d3_2) -1089.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

