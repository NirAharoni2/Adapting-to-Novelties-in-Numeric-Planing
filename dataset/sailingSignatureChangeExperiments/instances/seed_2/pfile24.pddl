;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -9.0)
		(= (x b1) 3.0)
		(= (y b1) 4.0)

		(= (d p0) 144.0)

        (= (engine_value e0) 6.79)
		(= (engine_value e1) 8.57)

        (= (dummy_1_value d1_0) 92.0)
		(= (dummy_1_value d1_1) -46.0)

        (= (dummy_2_value d2_0) 6.0)

        (= (dummy_3_value d3_0) -1303.0)
		(= (dummy_3_value d3_1) -1067.0)
		(= (dummy_3_value d3_2) 1480.0)
		(= (dummy_3_value d3_3) -1302.0)
		(= (dummy_3_value d3_4) -686.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

