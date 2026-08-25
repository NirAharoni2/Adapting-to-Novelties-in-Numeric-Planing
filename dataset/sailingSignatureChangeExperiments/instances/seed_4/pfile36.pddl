;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -8.0)
		(= (x b1) -6.0)
		(= (y b1) -8.0)

		(= (d p0) 122.0)

        (= (engine_value e0) 8.2)
		(= (engine_value e1) 8.46)

        (= (dummy_1_value d1_0) -80.0)
		(= (dummy_1_value d1_1) -101.0)
		(= (dummy_1_value d1_2) -60.0)
		(= (dummy_1_value d1_3) 79.0)
		(= (dummy_1_value d1_4) -128.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) 15.0)
		(= (dummy_2_value d2_2) 10.0)

        (= (dummy_3_value d3_0) -1345.0)
		(= (dummy_3_value d3_1) -936.0)
		(= (dummy_3_value d3_2) 560.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

