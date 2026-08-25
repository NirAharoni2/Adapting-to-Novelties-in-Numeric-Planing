;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -7.0)
		(= (x b1) 4.0)
		(= (y b1) -4.0)

		(= (d p0) -76.0)

        (= (engine_value e0) 3.52)
		(= (engine_value e1) 9.8)

        (= (dummy_1_value d1_0) 62.0)
		(= (dummy_1_value d1_1) 80.0)

        (= (dummy_2_value d2_0) -13.0)

        (= (dummy_3_value d3_0) 938.0)
		(= (dummy_3_value d3_1) 584.0)
		(= (dummy_3_value d3_2) -1117.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

