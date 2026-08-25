;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -6.0)
		(= (x b1) -7.0)
		(= (y b1) -7.0)

		(= (d p0) 77.0)

        (= (engine_value e0) 5.02)
		(= (engine_value e1) 8.18)

        (= (dummy_1_value d1_0) -90.0)

        (= (dummy_2_value d2_0) 8.0)
		(= (dummy_2_value d2_1) -7.0)
		(= (dummy_2_value d2_2) -13.0)
		(= (dummy_2_value d2_3) -8.0)
		(= (dummy_2_value d2_4) -12.0)

        (= (dummy_3_value d3_0) -625.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

