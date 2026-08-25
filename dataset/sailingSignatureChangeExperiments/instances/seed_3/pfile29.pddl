;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)

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
		(= (x b0) 7.0)
		(= (y b0) -6.0)
		(= (x b1) 6.0)
		(= (y b1) -5.0)

		(= (d p0) 56.0)

        (= (engine_value e0) 7.35)
		(= (engine_value e1) 4.97)

        (= (dummy_1_value d1_0) 139.0)
		(= (dummy_1_value d1_1) 113.0)
		(= (dummy_1_value d1_2) -53.0)
		(= (dummy_1_value d1_3) -110.0)

        (= (dummy_2_value d2_0) 8.0)
		(= (dummy_2_value d2_1) -5.0)
		(= (dummy_2_value d2_2) 8.0)
		(= (dummy_2_value d2_3) -12.0)

        (= (dummy_3_value d3_0) -1237.0)
		(= (dummy_3_value d3_1) 533.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

