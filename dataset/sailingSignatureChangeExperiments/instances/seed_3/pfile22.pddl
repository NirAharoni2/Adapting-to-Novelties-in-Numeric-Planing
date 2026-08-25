;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -4.0)
		(= (x b1) 6.0)
		(= (y b1) 6.0)

		(= (d p0) -66.0)

        (= (engine_value e0) 5.51)
		(= (engine_value e1) 5.56)

        (= (dummy_1_value d1_0) 81.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) 14.0)
		(= (dummy_2_value d2_3) -13.0)
		(= (dummy_2_value d2_4) 13.0)

        (= (dummy_3_value d3_0) -774.0)
		(= (dummy_3_value d3_1) 786.0)
		(= (dummy_3_value d3_2) 1291.0)
		(= (dummy_3_value d3_3) -857.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

