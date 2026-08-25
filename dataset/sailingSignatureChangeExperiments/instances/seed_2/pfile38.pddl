;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -4.0)
		(= (x b1) -9.0)
		(= (y b1) -9.0)

		(= (d p0) -120.0)

        (= (engine_value e0) 2.68)
		(= (engine_value e1) 8.55)

        (= (dummy_1_value d1_0) 114.0)
		(= (dummy_1_value d1_1) -69.0)

        (= (dummy_2_value d2_0) 15.0)
		(= (dummy_2_value d2_1) -12.0)
		(= (dummy_2_value d2_2) -10.0)

        (= (dummy_3_value d3_0) 1089.0)
		(= (dummy_3_value d3_1) -488.0)
		(= (dummy_3_value d3_2) 1496.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

