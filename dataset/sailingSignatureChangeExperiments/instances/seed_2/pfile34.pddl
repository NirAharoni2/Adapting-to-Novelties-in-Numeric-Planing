;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -8.0)
		(= (x b1) -5.0)
		(= (y b1) -4.0)

		(= (d p0) -105.0)

        (= (engine_value e0) 7.51)
		(= (engine_value e1) 6.31)

        (= (dummy_1_value d1_0) 72.0)
		(= (dummy_1_value d1_1) -89.0)
		(= (dummy_1_value d1_2) 139.0)
		(= (dummy_1_value d1_3) 102.0)
		(= (dummy_1_value d1_4) 74.0)

        (= (dummy_2_value d2_0) 8.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) -14.0)

        (= (dummy_3_value d3_0) 651.0)
		(= (dummy_3_value d3_1) -647.0)
		(= (dummy_3_value d3_2) 773.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

