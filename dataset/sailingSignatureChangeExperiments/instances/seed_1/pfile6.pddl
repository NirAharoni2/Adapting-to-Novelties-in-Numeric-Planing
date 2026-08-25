;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)

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
		(= (x b0) 5.0)
		(= (y b0) 8.0)
		(= (x b1) -8.0)
		(= (y b1) -4.0)

		(= (d p0) -64.0)

        (= (engine_value e0) 9.7)
		(= (engine_value e1) 6.56)

        (= (dummy_1_value d1_0) -59.0)
		(= (dummy_1_value d1_1) 119.0)

        (= (dummy_2_value d2_0) 8.0)

        (= (dummy_3_value d3_0) -1284.0)
		(= (dummy_3_value d3_1) 905.0)
		(= (dummy_3_value d3_2) -1390.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

