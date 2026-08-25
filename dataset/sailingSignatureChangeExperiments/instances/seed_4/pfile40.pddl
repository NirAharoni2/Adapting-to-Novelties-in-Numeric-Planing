;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 9.0)
		(= (x b1) 8.0)
		(= (y b1) 9.0)

		(= (d p0) -102.0)

        (= (engine_value e0) 6.1)
		(= (engine_value e1) 8.08)

        (= (dummy_1_value d1_0) 86.0)
		(= (dummy_1_value d1_1) 76.0)
		(= (dummy_1_value d1_2) 96.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) 14.0)

        (= (dummy_3_value d3_0) 1453.0)
		(= (dummy_3_value d3_1) -479.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

