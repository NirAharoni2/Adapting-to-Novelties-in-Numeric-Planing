;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 6.0)
		(= (x b1) 8.0)
		(= (y b1) -6.0)

		(= (d p0) 114.0)

        (= (engine_value e0) 2.22)
		(= (engine_value e1) 9.94)

        (= (dummy_1_value d1_0) -51.0)
		(= (dummy_1_value d1_1) 138.0)
		(= (dummy_1_value d1_2) -54.0)
		(= (dummy_1_value d1_3) 113.0)

        (= (dummy_2_value d2_0) 5.0)
		(= (dummy_2_value d2_1) -12.0)

        (= (dummy_3_value d3_0) 1265.0)
		(= (dummy_3_value d3_1) -847.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

