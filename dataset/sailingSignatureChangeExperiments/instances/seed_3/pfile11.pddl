;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -6.0)
		(= (x b1) 5.0)
		(= (y b1) -8.0)

		(= (d p0) 124.0)

        (= (engine_value e0) 5.15)
		(= (engine_value e1) 4.94)

        (= (dummy_1_value d1_0) -113.0)
		(= (dummy_1_value d1_1) -141.0)
		(= (dummy_1_value d1_2) 147.0)
		(= (dummy_1_value d1_3) -72.0)
		(= (dummy_1_value d1_4) -77.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) 10.0)

        (= (dummy_3_value d3_0) 1392.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

