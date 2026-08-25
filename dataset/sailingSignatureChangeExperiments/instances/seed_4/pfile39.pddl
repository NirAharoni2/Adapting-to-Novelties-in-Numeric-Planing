;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -5.0)
		(= (x b1) -4.0)
		(= (y b1) 10.0)

		(= (d p0) 67.0)

        (= (engine_value e0) 7.74)
		(= (engine_value e1) 6.59)

        (= (dummy_1_value d1_0) -67.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) 9.0)

        (= (dummy_3_value d3_0) -643.0)
		(= (dummy_3_value d3_1) -1374.0)
		(= (dummy_3_value d3_2) 699.0)
		(= (dummy_3_value d3_3) -1088.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

