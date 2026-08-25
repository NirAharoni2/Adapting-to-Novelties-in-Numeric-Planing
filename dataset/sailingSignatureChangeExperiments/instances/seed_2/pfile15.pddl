;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -7.0)
		(= (x b1) -8.0)
		(= (y b1) 4.0)

		(= (d p0) 120.0)

        (= (engine_value e0) 9.66)
		(= (engine_value e1) 3.82)

        (= (dummy_1_value d1_0) -70.0)
		(= (dummy_1_value d1_1) -59.0)
		(= (dummy_1_value d1_2) 110.0)

        (= (dummy_2_value d2_0) -10.0)
		(= (dummy_2_value d2_1) 10.0)
		(= (dummy_2_value d2_2) -8.0)

        (= (dummy_3_value d3_0) -1095.0)
		(= (dummy_3_value d3_1) -577.0)
		(= (dummy_3_value d3_2) -879.0)
		(= (dummy_3_value d3_3) -533.0)
		(= (dummy_3_value d3_4) 634.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

