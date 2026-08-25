;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 6.0)
		(= (x b1) 4.0)
		(= (y b1) -9.0)

		(= (d p0) 78.0)

        (= (engine_value e0) 3.86)
		(= (engine_value e1) 7.53)

        (= (dummy_1_value d1_0) 76.0)
		(= (dummy_1_value d1_1) 88.0)

        (= (dummy_2_value d2_0) 11.0)
		(= (dummy_2_value d2_1) -13.0)

        (= (dummy_3_value d3_0) -997.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

