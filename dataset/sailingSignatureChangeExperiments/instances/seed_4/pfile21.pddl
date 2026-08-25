;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 4.0)
		(= (x b1) -7.0)
		(= (y b1) 6.0)

		(= (d p0) 150.0)

        (= (engine_value e0) 6.64)
		(= (engine_value e1) 2.21)

        (= (dummy_1_value d1_0) 147.0)
		(= (dummy_1_value d1_1) -88.0)

        (= (dummy_2_value d2_0) 11.0)

        (= (dummy_3_value d3_0) 1441.0)
		(= (dummy_3_value d3_1) -1331.0)
		(= (dummy_3_value d3_2) 1343.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

