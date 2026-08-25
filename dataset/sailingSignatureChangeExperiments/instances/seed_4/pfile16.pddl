;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 9.0)
		(= (x b1) 5.0)
		(= (y b1) 7.0)

		(= (d p0) 126.0)

        (= (engine_value e0) 8.75)
		(= (engine_value e1) 9.89)

        (= (dummy_1_value d1_0) -71.0)
		(= (dummy_1_value d1_1) -144.0)
		(= (dummy_1_value d1_2) -51.0)
		(= (dummy_1_value d1_3) 116.0)
		(= (dummy_1_value d1_4) -53.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) 13.0)

        (= (dummy_3_value d3_0) -869.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

