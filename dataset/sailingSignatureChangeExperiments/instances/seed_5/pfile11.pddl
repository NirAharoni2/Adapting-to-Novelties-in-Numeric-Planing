;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 3.0)
		(= (x b1) -6.0)
		(= (y b1) 8.0)

		(= (d p0) -90.0)

        (= (engine_value e0) 2.95)
		(= (engine_value e1) 5.19)

        (= (dummy_1_value d1_0) 46.0)
		(= (dummy_1_value d1_1) -78.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) -12.0)

        (= (dummy_3_value d3_0) 1162.0)
		(= (dummy_3_value d3_1) -511.0)
		(= (dummy_3_value d3_2) 682.0)
		(= (dummy_3_value d3_3) -1253.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

