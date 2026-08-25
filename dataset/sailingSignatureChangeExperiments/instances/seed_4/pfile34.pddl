;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -4.0)
		(= (x b1) 7.0)
		(= (y b1) 4.0)

		(= (d p0) 78.0)

        (= (engine_value e0) 8.94)
		(= (engine_value e1) 8.32)

        (= (dummy_1_value d1_0) 146.0)
		(= (dummy_1_value d1_1) -66.0)
		(= (dummy_1_value d1_2) 132.0)

        (= (dummy_2_value d2_0) -13.0)
		(= (dummy_2_value d2_1) 14.0)

        (= (dummy_3_value d3_0) -1072.0)
		(= (dummy_3_value d3_1) 775.0)
		(= (dummy_3_value d3_2) 1286.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

