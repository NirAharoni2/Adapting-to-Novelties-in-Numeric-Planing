;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 8.0)
		(= (x b1) -9.0)
		(= (y b1) 7.0)

		(= (d p0) -99.0)

        (= (engine_value e0) 3.11)
		(= (engine_value e1) 5.75)

        (= (dummy_1_value d1_0) 143.0)
		(= (dummy_1_value d1_1) 106.0)

        (= (dummy_2_value d2_0) -10.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) -5.0)
		(= (dummy_2_value d2_3) 12.0)
		(= (dummy_2_value d2_4) 15.0)

        (= (dummy_3_value d3_0) -557.0)
		(= (dummy_3_value d3_1) 1084.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

