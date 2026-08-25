;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 5.0)
		(= (x b1) -10.0)
		(= (y b1) 9.0)

		(= (d p0) 94.0)

        (= (engine_value e0) 7.32)
		(= (engine_value e1) 9.43)

        (= (dummy_1_value d1_0) 108.0)
		(= (dummy_1_value d1_1) -96.0)
		(= (dummy_1_value d1_2) -131.0)
		(= (dummy_1_value d1_3) 149.0)
		(= (dummy_1_value d1_4) 88.0)

        (= (dummy_2_value d2_0) -10.0)
		(= (dummy_2_value d2_1) 9.0)

        (= (dummy_3_value d3_0) 613.0)
		(= (dummy_3_value d3_1) -952.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

