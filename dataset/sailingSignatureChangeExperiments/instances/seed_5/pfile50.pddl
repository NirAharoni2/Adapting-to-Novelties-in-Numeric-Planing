;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -8.0)
		(= (x b1) -10.0)
		(= (y b1) -9.0)

		(= (d p0) -69.0)

        (= (engine_value e0) 9.54)
		(= (engine_value e1) 4.83)

        (= (dummy_1_value d1_0) -119.0)
		(= (dummy_1_value d1_1) 95.0)

        (= (dummy_2_value d2_0) -10.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) 6.0)
		(= (dummy_2_value d2_3) -7.0)

        (= (dummy_3_value d3_0) 1367.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

