;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -6.0)
		(= (x b1) -5.0)
		(= (y b1) 5.0)

		(= (d p0) -148.0)

        (= (engine_value e0) 8.96)
		(= (engine_value e1) 9.75)

        (= (dummy_1_value d1_0) 143.0)
		(= (dummy_1_value d1_1) -143.0)
		(= (dummy_1_value d1_2) -52.0)
		(= (dummy_1_value d1_3) 70.0)
		(= (dummy_1_value d1_4) 56.0)

        (= (dummy_2_value d2_0) 5.0)

        (= (dummy_3_value d3_0) 1061.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

