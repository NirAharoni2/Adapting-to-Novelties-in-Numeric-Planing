;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 9.0)
		(= (x b1) 7.0)
		(= (y b1) -7.0)

		(= (d p0) 82.0)

        (= (engine_value e0) 8.28)
		(= (engine_value e1) 2.07)

        (= (dummy_1_value d1_0) 123.0)

        (= (dummy_2_value d2_0) -15.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) 14.0)
		(= (dummy_2_value d2_3) -14.0)

        (= (dummy_3_value d3_0) -461.0)
		(= (dummy_3_value d3_1) 585.0)
		(= (dummy_3_value d3_2) 1457.0)
		(= (dummy_3_value d3_3) 694.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

