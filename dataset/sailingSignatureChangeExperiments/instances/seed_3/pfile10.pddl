;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 9.0)
		(= (x b1) 6.0)
		(= (y b1) -8.0)

		(= (d p0) 130.0)

        (= (engine_value e0) 7.73)
		(= (engine_value e1) 5.79)

        (= (dummy_1_value d1_0) -109.0)
		(= (dummy_1_value d1_1) 104.0)
		(= (dummy_1_value d1_2) 84.0)
		(= (dummy_1_value d1_3) 81.0)
		(= (dummy_1_value d1_4) 48.0)

        (= (dummy_2_value d2_0) -10.0)
		(= (dummy_2_value d2_1) 7.0)
		(= (dummy_2_value d2_2) -14.0)

        (= (dummy_3_value d3_0) 1042.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

