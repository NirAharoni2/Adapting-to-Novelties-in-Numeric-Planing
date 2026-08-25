;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) -5.0)
		(= (x b1) -9.0)
		(= (y b1) -4.0)

		(= (d p0) 57.0)

        (= (engine_value e0) 5.03)
		(= (engine_value e1) 3.55)

        (= (dummy_1_value d1_0) -107.0)
		(= (dummy_1_value d1_1) 137.0)
		(= (dummy_1_value d1_2) 48.0)
		(= (dummy_1_value d1_3) -92.0)
		(= (dummy_1_value d1_4) -115.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) -10.0)
		(= (dummy_2_value d2_3) -5.0)

        (= (dummy_3_value d3_0) 797.0)
		(= (dummy_3_value d3_1) -1113.0)
		(= (dummy_3_value d3_2) -766.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

