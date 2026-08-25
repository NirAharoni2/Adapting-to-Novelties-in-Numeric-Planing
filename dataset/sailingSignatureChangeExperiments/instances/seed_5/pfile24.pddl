;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -8.0)
		(= (x b1) -4.0)
		(= (y b1) 8.0)

		(= (d p0) -51.0)

        (= (engine_value e0) 5.73)
		(= (engine_value e1) 2.04)

        (= (dummy_1_value d1_0) 146.0)
		(= (dummy_1_value d1_1) -150.0)
		(= (dummy_1_value d1_2) -114.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) 12.0)

        (= (dummy_3_value d3_0) -650.0)
		(= (dummy_3_value d3_1) 1238.0)
		(= (dummy_3_value d3_2) -1139.0)
		(= (dummy_3_value d3_3) -549.0)
		(= (dummy_3_value d3_4) 1254.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

