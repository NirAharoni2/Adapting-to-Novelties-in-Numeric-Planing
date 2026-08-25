;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -10.0)
		(= (x b1) 7.0)
		(= (y b1) 5.0)

		(= (d p0) -100.0)

        (= (engine_value e0) 9.02)
		(= (engine_value e1) 4.84)

        (= (dummy_1_value d1_0) -106.0)
		(= (dummy_1_value d1_1) 58.0)

        (= (dummy_2_value d2_0) 5.0)
		(= (dummy_2_value d2_1) 13.0)
		(= (dummy_2_value d2_2) -7.0)
		(= (dummy_2_value d2_3) -14.0)
		(= (dummy_2_value d2_4) -12.0)

        (= (dummy_3_value d3_0) 1042.0)
		(= (dummy_3_value d3_1) 1475.0)
		(= (dummy_3_value d3_2) 1281.0)
		(= (dummy_3_value d3_3) 1425.0)
		(= (dummy_3_value d3_4) 815.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

