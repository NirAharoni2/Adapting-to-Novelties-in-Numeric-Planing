;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -6.0)
		(= (x b1) 8.0)
		(= (y b1) 10.0)

		(= (d p0) 103.0)

        (= (engine_value e0) 7.59)
		(= (engine_value e1) 7.59)

        (= (dummy_1_value d1_0) 97.0)

        (= (dummy_2_value d2_0) -5.0)
		(= (dummy_2_value d2_1) -12.0)
		(= (dummy_2_value d2_2) -7.0)

        (= (dummy_3_value d3_0) -1121.0)
		(= (dummy_3_value d3_1) 721.0)
		(= (dummy_3_value d3_2) -1097.0)
		(= (dummy_3_value d3_3) 464.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

