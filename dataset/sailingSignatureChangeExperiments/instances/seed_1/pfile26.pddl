;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 7.0)
		(= (x b1) -7.0)
		(= (y b1) 9.0)

		(= (d p0) 49.0)

        (= (engine_value e0) 8.81)
		(= (engine_value e1) 5.67)

        (= (dummy_1_value d1_0) -119.0)
		(= (dummy_1_value d1_1) 46.0)
		(= (dummy_1_value d1_2) -118.0)
		(= (dummy_1_value d1_3) 123.0)

        (= (dummy_2_value d2_0) 10.0)

        (= (dummy_3_value d3_0) 1029.0)
		(= (dummy_3_value d3_1) 1019.0)
		(= (dummy_3_value d3_2) 1451.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

