;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 3.0)
		(= (x b1) 5.0)
		(= (y b1) 7.0)

		(= (d p0) 145.0)

        (= (engine_value e0) 7.44)
		(= (engine_value e1) 4.19)

        (= (dummy_1_value d1_0) -118.0)
		(= (dummy_1_value d1_1) -119.0)
		(= (dummy_1_value d1_2) 79.0)
		(= (dummy_1_value d1_3) 97.0)
		(= (dummy_1_value d1_4) -81.0)

        (= (dummy_2_value d2_0) 8.0)
		(= (dummy_2_value d2_1) 9.0)
		(= (dummy_2_value d2_2) -5.0)
		(= (dummy_2_value d2_3) 9.0)
		(= (dummy_2_value d2_4) 9.0)

        (= (dummy_3_value d3_0) -539.0)
		(= (dummy_3_value d3_1) -973.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

