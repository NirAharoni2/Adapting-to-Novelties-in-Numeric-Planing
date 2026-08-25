;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)

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
		(= (y b0) -9.0)
		(= (x b1) 3.0)
		(= (y b1) 6.0)

		(= (d p0) -115.0)

        (= (engine_value e0) 7.81)
		(= (engine_value e1) 8.67)

        (= (dummy_1_value d1_0) -145.0)

        (= (dummy_2_value d2_0) -15.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) 11.0)
		(= (dummy_2_value d2_3) -13.0)
		(= (dummy_2_value d2_4) -13.0)

        (= (dummy_3_value d3_0) -1088.0)
		(= (dummy_3_value d3_1) -470.0)
		(= (dummy_3_value d3_2) -800.0)
		(= (dummy_3_value d3_3) -1399.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

