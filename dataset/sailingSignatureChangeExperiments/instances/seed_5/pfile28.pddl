;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 4.0)
		(= (x b1) 10.0)
		(= (y b1) 4.0)

		(= (d p0) -82.0)

        (= (engine_value e0) 5.0)
		(= (engine_value e1) 4.95)

        (= (dummy_1_value d1_0) -89.0)
		(= (dummy_1_value d1_1) 70.0)
		(= (dummy_1_value d1_2) 73.0)
		(= (dummy_1_value d1_3) 122.0)

        (= (dummy_2_value d2_0) -10.0)

        (= (dummy_3_value d3_0) 459.0)
		(= (dummy_3_value d3_1) 890.0)
		(= (dummy_3_value d3_2) 1091.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

