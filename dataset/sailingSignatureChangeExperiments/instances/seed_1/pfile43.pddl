;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -9.0)
		(= (x b1) 9.0)
		(= (y b1) -4.0)

		(= (d p0) 126.0)

        (= (engine_value e0) 5.32)
		(= (engine_value e1) 9.99)

        (= (dummy_1_value d1_0) 105.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) -11.0)
		(= (dummy_2_value d2_3) 11.0)
		(= (dummy_2_value d2_4) 10.0)

        (= (dummy_3_value d3_0) 1339.0)
		(= (dummy_3_value d3_1) -975.0)
		(= (dummy_3_value d3_2) 454.0)
		(= (dummy_3_value d3_3) -1159.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

