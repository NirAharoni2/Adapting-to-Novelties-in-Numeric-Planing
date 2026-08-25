;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -3.0)
		(= (x b1) 6.0)
		(= (y b1) 9.0)

		(= (d p0) 119.0)

        (= (engine_value e0) 4.9)
		(= (engine_value e1) 5.41)

        (= (dummy_1_value d1_0) 66.0)
		(= (dummy_1_value d1_1) 133.0)
		(= (dummy_1_value d1_2) 101.0)
		(= (dummy_1_value d1_3) 149.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 6.0)
		(= (dummy_2_value d2_2) 5.0)
		(= (dummy_2_value d2_3) 8.0)

        (= (dummy_3_value d3_0) 1123.0)
		(= (dummy_3_value d3_1) 953.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

