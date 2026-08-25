;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 6.0)
		(= (x b1) 6.0)
		(= (y b1) 7.0)

		(= (d p0) -74.0)

        (= (engine_value e0) 6.85)
		(= (engine_value e1) 7.61)

        (= (dummy_1_value d1_0) -80.0)
		(= (dummy_1_value d1_1) -92.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) -10.0)
		(= (dummy_2_value d2_3) 7.0)
		(= (dummy_2_value d2_4) -13.0)

        (= (dummy_3_value d3_0) -1110.0)
		(= (dummy_3_value d3_1) -1112.0)
		(= (dummy_3_value d3_2) 728.0)
		(= (dummy_3_value d3_3) 1445.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

