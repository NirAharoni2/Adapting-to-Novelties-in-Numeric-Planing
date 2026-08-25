;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) 8.0)
		(= (x b1) -4.0)
		(= (y b1) -3.0)

		(= (d p0) 51.0)

        (= (engine_value e0) 3.34)
		(= (engine_value e1) 7.08)

        (= (dummy_1_value d1_0) 123.0)
		(= (dummy_1_value d1_1) 68.0)
		(= (dummy_1_value d1_2) -53.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) 14.0)

        (= (dummy_3_value d3_0) 1373.0)
		(= (dummy_3_value d3_1) -795.0)
		(= (dummy_3_value d3_2) -564.0)
		(= (dummy_3_value d3_3) 945.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

