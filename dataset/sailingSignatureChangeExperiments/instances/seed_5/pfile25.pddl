;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)

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
		(= (x b0) -3.0)
		(= (y b0) -7.0)
		(= (x b1) -3.0)
		(= (y b1) -5.0)

		(= (d p0) -48.0)

        (= (engine_value e0) 6.43)
		(= (engine_value e1) 5.46)

        (= (dummy_1_value d1_0) -61.0)

        (= (dummy_2_value d2_0) 7.0)
		(= (dummy_2_value d2_1) -14.0)
		(= (dummy_2_value d2_2) -6.0)
		(= (dummy_2_value d2_3) -6.0)
		(= (dummy_2_value d2_4) -9.0)

        (= (dummy_3_value d3_0) 1362.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

