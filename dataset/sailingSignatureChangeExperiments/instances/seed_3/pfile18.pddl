;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -4.0)
		(= (x b1) 3.0)
		(= (y b1) -8.0)

		(= (d p0) -93.0)

        (= (engine_value e0) 9.44)
		(= (engine_value e1) 4.58)

        (= (dummy_1_value d1_0) 118.0)
		(= (dummy_1_value d1_1) -60.0)
		(= (dummy_1_value d1_2) 142.0)
		(= (dummy_1_value d1_3) 123.0)

        (= (dummy_2_value d2_0) -7.0)

        (= (dummy_3_value d3_0) 1355.0)
		(= (dummy_3_value d3_1) -705.0)
		(= (dummy_3_value d3_2) -1385.0)
		(= (dummy_3_value d3_3) -1418.0)
		(= (dummy_3_value d3_4) -1331.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

