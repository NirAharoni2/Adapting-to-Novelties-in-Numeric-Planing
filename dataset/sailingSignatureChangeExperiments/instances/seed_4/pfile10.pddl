;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)

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
		(= (x b0) 8.0)
		(= (y b0) -8.0)
		(= (x b1) -6.0)
		(= (y b1) 9.0)

		(= (d p0) -108.0)

        (= (engine_value e0) 8.54)
		(= (engine_value e1) 4.27)

        (= (dummy_1_value d1_0) -149.0)
		(= (dummy_1_value d1_1) -93.0)
		(= (dummy_1_value d1_2) 110.0)

        (= (dummy_2_value d2_0) -5.0)
		(= (dummy_2_value d2_1) 6.0)
		(= (dummy_2_value d2_2) -5.0)
		(= (dummy_2_value d2_3) 14.0)

        (= (dummy_3_value d3_0) 778.0)
		(= (dummy_3_value d3_1) -1229.0)
		(= (dummy_3_value d3_2) -525.0)
		(= (dummy_3_value d3_3) 1267.0)
		(= (dummy_3_value d3_4) -1250.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

