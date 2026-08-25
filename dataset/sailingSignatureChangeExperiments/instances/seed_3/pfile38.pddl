;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -9.0)
		(= (x b1) -7.0)
		(= (y b1) -4.0)

		(= (d p0) -126.0)

        (= (engine_value e0) 7.47)
		(= (engine_value e1) 6.25)

        (= (dummy_1_value d1_0) 90.0)
		(= (dummy_1_value d1_1) -118.0)
		(= (dummy_1_value d1_2) -142.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) 9.0)

        (= (dummy_3_value d3_0) -1091.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

