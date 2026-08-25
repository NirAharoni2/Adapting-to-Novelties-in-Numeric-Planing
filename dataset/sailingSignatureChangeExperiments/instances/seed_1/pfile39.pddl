;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 7.0)
		(= (x b1) 5.0)
		(= (y b1) -7.0)

		(= (d p0) 54.0)

        (= (engine_value e0) 9.48)
		(= (engine_value e1) 3.22)

        (= (dummy_1_value d1_0) 48.0)
		(= (dummy_1_value d1_1) -106.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) 10.0)
		(= (dummy_2_value d2_2) 13.0)

        (= (dummy_3_value d3_0) -1287.0)
		(= (dummy_3_value d3_1) 867.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

