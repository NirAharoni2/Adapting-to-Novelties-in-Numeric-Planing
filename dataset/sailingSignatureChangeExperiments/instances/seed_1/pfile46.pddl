;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -6.0)
		(= (x b1) -5.0)
		(= (y b1) -4.0)

		(= (d p0) -95.0)

        (= (engine_value e0) 3.68)
		(= (engine_value e1) 4.31)

        (= (dummy_1_value d1_0) -111.0)
		(= (dummy_1_value d1_1) -81.0)
		(= (dummy_1_value d1_2) -131.0)

        (= (dummy_2_value d2_0) 8.0)
		(= (dummy_2_value d2_1) 9.0)

        (= (dummy_3_value d3_0) -1476.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

