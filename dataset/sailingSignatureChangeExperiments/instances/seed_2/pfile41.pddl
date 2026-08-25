;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 5.0)
		(= (x b1) 6.0)
		(= (y b1) -5.0)

		(= (d p0) -65.0)

        (= (engine_value e0) 5.67)
		(= (engine_value e1) 5.44)

        (= (dummy_1_value d1_0) 115.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 9.0)
		(= (dummy_2_value d2_2) 14.0)

        (= (dummy_3_value d3_0) -808.0)
		(= (dummy_3_value d3_1) 873.0)
		(= (dummy_3_value d3_2) -1197.0)
		(= (dummy_3_value d3_3) 1379.0)
		(= (dummy_3_value d3_4) 1242.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

