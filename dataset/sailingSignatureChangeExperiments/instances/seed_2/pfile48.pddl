;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -9.0)
		(= (x b1) -8.0)
		(= (y b1) 10.0)

		(= (d p0) 89.0)

        (= (engine_value e0) 5.3)
		(= (engine_value e1) 2.56)

        (= (dummy_1_value d1_0) -135.0)
		(= (dummy_1_value d1_1) 131.0)
		(= (dummy_1_value d1_2) -76.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) 10.0)
		(= (dummy_2_value d2_3) -8.0)

        (= (dummy_3_value d3_0) 1482.0)
		(= (dummy_3_value d3_1) -1222.0)
		(= (dummy_3_value d3_2) -1187.0)
		(= (dummy_3_value d3_3) -534.0)
		(= (dummy_3_value d3_4) 503.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

