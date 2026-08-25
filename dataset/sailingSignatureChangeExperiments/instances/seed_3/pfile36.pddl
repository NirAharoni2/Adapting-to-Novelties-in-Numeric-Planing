;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -5.0)
		(= (x b1) 9.0)
		(= (y b1) -8.0)

		(= (d p0) 146.0)

        (= (engine_value e0) 2.42)
		(= (engine_value e1) 6.14)

        (= (dummy_1_value d1_0) 98.0)

        (= (dummy_2_value d2_0) -6.0)

        (= (dummy_3_value d3_0) -638.0)
		(= (dummy_3_value d3_1) 1414.0)
		(= (dummy_3_value d3_2) -1139.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

