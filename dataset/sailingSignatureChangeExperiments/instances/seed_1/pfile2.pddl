;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 4.0)
		(= (x b1) 8.0)
		(= (y b1) -5.0)

		(= (d p0) 147.0)

        (= (engine_value e0) 6.01)
		(= (engine_value e1) 9.74)

        (= (dummy_1_value d1_0) 141.0)
		(= (dummy_1_value d1_1) -120.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) 9.0)
		(= (dummy_2_value d2_2) 10.0)
		(= (dummy_2_value d2_3) 9.0)

        (= (dummy_3_value d3_0) 835.0)
		(= (dummy_3_value d3_1) 1265.0)
		(= (dummy_3_value d3_2) 541.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

