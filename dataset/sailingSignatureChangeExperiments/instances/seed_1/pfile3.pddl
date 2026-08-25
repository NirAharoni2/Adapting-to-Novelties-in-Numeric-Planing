;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -8.0)
		(= (x b1) 7.0)
		(= (y b1) 8.0)

		(= (d p0) -126.0)

        (= (engine_value e0) 2.1)
		(= (engine_value e1) 3.6)

        (= (dummy_1_value d1_0) 103.0)
		(= (dummy_1_value d1_1) -114.0)
		(= (dummy_1_value d1_2) 82.0)
		(= (dummy_1_value d1_3) 114.0)
		(= (dummy_1_value d1_4) 122.0)

        (= (dummy_2_value d2_0) -6.0)

        (= (dummy_3_value d3_0) 1435.0)
		(= (dummy_3_value d3_1) 586.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

