;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) 10.0)
		(= (x b1) 4.0)
		(= (y b1) -6.0)

		(= (d p0) 102.0)

        (= (engine_value e0) 7.51)
		(= (engine_value e1) 7.29)

        (= (dummy_1_value d1_0) -93.0)
		(= (dummy_1_value d1_1) -124.0)
		(= (dummy_1_value d1_2) -121.0)
		(= (dummy_1_value d1_3) 92.0)
		(= (dummy_1_value d1_4) 113.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) -12.0)
		(= (dummy_2_value d2_2) -6.0)

        (= (dummy_3_value d3_0) 768.0)
		(= (dummy_3_value d3_1) -929.0)
		(= (dummy_3_value d3_2) 1076.0)
		(= (dummy_3_value d3_3) -1479.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

