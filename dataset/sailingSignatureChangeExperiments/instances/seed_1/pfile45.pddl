;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 3.0)
		(= (x b1) 9.0)
		(= (y b1) -3.0)

		(= (d p0) -133.0)

        (= (engine_value e0) 6.46)
		(= (engine_value e1) 7.66)

        (= (dummy_1_value d1_0) 111.0)
		(= (dummy_1_value d1_1) 64.0)

        (= (dummy_2_value d2_0) 7.0)
		(= (dummy_2_value d2_1) 15.0)
		(= (dummy_2_value d2_2) 12.0)
		(= (dummy_2_value d2_3) -7.0)
		(= (dummy_2_value d2_4) -10.0)

        (= (dummy_3_value d3_0) 1095.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

