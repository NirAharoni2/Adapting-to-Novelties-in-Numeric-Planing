;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 9.0)
		(= (x b1) 10.0)
		(= (y b1) -8.0)

		(= (d p0) 134.0)

        (= (engine_value e0) 6.15)
		(= (engine_value e1) 2.54)

        (= (dummy_1_value d1_0) 115.0)

        (= (dummy_2_value d2_0) -12.0)
		(= (dummy_2_value d2_1) 11.0)

        (= (dummy_3_value d3_0) 1441.0)
		(= (dummy_3_value d3_1) -1060.0)
		(= (dummy_3_value d3_2) -736.0)
		(= (dummy_3_value d3_3) 1235.0)
		(= (dummy_3_value d3_4) 901.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

