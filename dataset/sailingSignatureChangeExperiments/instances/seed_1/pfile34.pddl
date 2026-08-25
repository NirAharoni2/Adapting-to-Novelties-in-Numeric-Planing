;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -5.0)
		(= (x b1) 10.0)
		(= (y b1) 3.0)

		(= (d p0) 59.0)

        (= (engine_value e0) 7.98)
		(= (engine_value e1) 9.54)

        (= (dummy_1_value d1_0) -147.0)
		(= (dummy_1_value d1_1) -79.0)
		(= (dummy_1_value d1_2) -111.0)
		(= (dummy_1_value d1_3) -101.0)

        (= (dummy_2_value d2_0) -7.0)
		(= (dummy_2_value d2_1) 12.0)
		(= (dummy_2_value d2_2) 13.0)
		(= (dummy_2_value d2_3) 10.0)

        (= (dummy_3_value d3_0) 1029.0)
		(= (dummy_3_value d3_1) 1047.0)
		(= (dummy_3_value d3_2) 824.0)
		(= (dummy_3_value d3_3) -768.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

