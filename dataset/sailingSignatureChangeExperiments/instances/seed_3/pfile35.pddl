;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 6.0)
		(= (x b1) -4.0)
		(= (y b1) -9.0)

		(= (d p0) 108.0)

        (= (engine_value e0) 2.68)
		(= (engine_value e1) 2.22)

        (= (dummy_1_value d1_0) -149.0)
		(= (dummy_1_value d1_1) 64.0)
		(= (dummy_1_value d1_2) -109.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) 11.0)

        (= (dummy_3_value d3_0) -1398.0)
		(= (dummy_3_value d3_1) 1176.0)
		(= (dummy_3_value d3_2) -1036.0)
		(= (dummy_3_value d3_3) 1491.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

