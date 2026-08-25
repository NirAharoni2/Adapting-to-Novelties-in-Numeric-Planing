;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)

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
		(= (x b0) 3.0)
		(= (y b0) -6.0)
		(= (x b1) 6.0)
		(= (y b1) 4.0)

		(= (d p0) 66.0)

        (= (engine_value e0) 3.27)
		(= (engine_value e1) 6.41)

        (= (dummy_1_value d1_0) -62.0)
		(= (dummy_1_value d1_1) 81.0)
		(= (dummy_1_value d1_2) 119.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) 8.0)

        (= (dummy_3_value d3_0) 745.0)
		(= (dummy_3_value d3_1) 1248.0)
		(= (dummy_3_value d3_2) 1241.0)
		(= (dummy_3_value d3_3) -1353.0)
		(= (dummy_3_value d3_4) 497.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

