;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -8.0)
		(= (x b1) -7.0)
		(= (y b1) -5.0)

		(= (d p0) 145.0)

        (= (engine_value e0) 7.88)
		(= (engine_value e1) 9.68)

        (= (dummy_1_value d1_0) -120.0)

        (= (dummy_2_value d2_0) 13.0)

        (= (dummy_3_value d3_0) -510.0)
		(= (dummy_3_value d3_1) 1309.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

