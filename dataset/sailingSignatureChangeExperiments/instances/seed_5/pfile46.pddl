;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 7.0)
		(= (x b1) -7.0)
		(= (y b1) -8.0)

		(= (d p0) 107.0)

        (= (engine_value e0) 8.4)
		(= (engine_value e1) 7.2)

        (= (dummy_1_value d1_0) 112.0)
		(= (dummy_1_value d1_1) 144.0)

        (= (dummy_2_value d2_0) 5.0)
		(= (dummy_2_value d2_1) -13.0)

        (= (dummy_3_value d3_0) -674.0)
		(= (dummy_3_value d3_1) -620.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

