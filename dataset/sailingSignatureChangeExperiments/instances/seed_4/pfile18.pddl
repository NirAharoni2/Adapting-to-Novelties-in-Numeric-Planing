;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 6.0)
		(= (x b1) 7.0)
		(= (y b1) -6.0)

		(= (d p0) 108.0)

        (= (engine_value e0) 7.8)
		(= (engine_value e1) 2.18)

        (= (dummy_1_value d1_0) -66.0)
		(= (dummy_1_value d1_1) -146.0)
		(= (dummy_1_value d1_2) -120.0)
		(= (dummy_1_value d1_3) -117.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) -8.0)

        (= (dummy_3_value d3_0) 1457.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

