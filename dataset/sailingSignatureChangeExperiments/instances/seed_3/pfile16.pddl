;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)

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
		(= (x b0) -9.0)
		(= (y b0) -5.0)
		(= (x b1) 7.0)
		(= (y b1) 6.0)

		(= (d p0) -110.0)

        (= (engine_value e0) 8.98)
		(= (engine_value e1) 2.34)

        (= (dummy_1_value d1_0) 71.0)
		(= (dummy_1_value d1_1) 82.0)
		(= (dummy_1_value d1_2) -108.0)

        (= (dummy_2_value d2_0) 13.0)
		(= (dummy_2_value d2_1) -6.0)

        (= (dummy_3_value d3_0) -1216.0)
		(= (dummy_3_value d3_1) -1382.0)
		(= (dummy_3_value d3_2) 1214.0)
		(= (dummy_3_value d3_3) -1301.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

