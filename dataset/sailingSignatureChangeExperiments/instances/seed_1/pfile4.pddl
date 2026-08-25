;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 10.0)
		(= (x b1) -4.0)
		(= (y b1) -10.0)

		(= (d p0) 128.0)

        (= (engine_value e0) 4.65)
		(= (engine_value e1) 6.8)

        (= (dummy_1_value d1_0) 112.0)
		(= (dummy_1_value d1_1) 64.0)
		(= (dummy_1_value d1_2) -92.0)
		(= (dummy_1_value d1_3) 143.0)
		(= (dummy_1_value d1_4) -51.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) -7.0)

        (= (dummy_3_value d3_0) -1218.0)
		(= (dummy_3_value d3_1) 644.0)
		(= (dummy_3_value d3_2) -1324.0)
		(= (dummy_3_value d3_3) -500.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

