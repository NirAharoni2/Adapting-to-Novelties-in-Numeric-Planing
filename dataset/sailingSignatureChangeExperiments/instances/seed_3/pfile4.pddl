;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -6.0)
		(= (x b1) 7.0)
		(= (y b1) 7.0)

		(= (d p0) 98.0)

        (= (engine_value e0) 5.45)
		(= (engine_value e1) 7.76)

        (= (dummy_1_value d1_0) -118.0)
		(= (dummy_1_value d1_1) 100.0)
		(= (dummy_1_value d1_2) 46.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) 5.0)

        (= (dummy_3_value d3_0) 940.0)
		(= (dummy_3_value d3_1) 820.0)
		(= (dummy_3_value d3_2) 1225.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

