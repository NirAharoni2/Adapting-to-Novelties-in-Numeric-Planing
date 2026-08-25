;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)

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
		(= (x b0) 8.0)
		(= (y b0) -4.0)
		(= (x b1) 8.0)
		(= (y b1) 3.0)

		(= (d p0) -113.0)

        (= (engine_value e0) 3.14)
		(= (engine_value e1) 3.91)

        (= (dummy_1_value d1_0) -140.0)
		(= (dummy_1_value d1_1) -71.0)
		(= (dummy_1_value d1_2) -53.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) -10.0)

        (= (dummy_3_value d3_0) 546.0)
		(= (dummy_3_value d3_1) -777.0)
		(= (dummy_3_value d3_2) -864.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

