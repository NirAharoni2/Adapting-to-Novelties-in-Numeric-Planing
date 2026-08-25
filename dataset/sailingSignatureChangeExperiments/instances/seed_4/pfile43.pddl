;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -7.0)
		(= (x b1) 10.0)
		(= (y b1) -9.0)

		(= (d p0) -59.0)

        (= (engine_value e0) 9.96)
		(= (engine_value e1) 2.46)

        (= (dummy_1_value d1_0) -100.0)
		(= (dummy_1_value d1_1) 105.0)

        (= (dummy_2_value d2_0) -5.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) 15.0)
		(= (dummy_2_value d2_3) 13.0)

        (= (dummy_3_value d3_0) 1162.0)
		(= (dummy_3_value d3_1) 1445.0)
		(= (dummy_3_value d3_2) 1160.0)
		(= (dummy_3_value d3_3) -1062.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

