;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -10.0)
		(= (x b1) -7.0)
		(= (y b1) 4.0)

		(= (d p0) 79.0)

        (= (engine_value e0) 5.63)
		(= (engine_value e1) 3.92)

        (= (dummy_1_value d1_0) 49.0)
		(= (dummy_1_value d1_1) 105.0)

        (= (dummy_2_value d2_0) 11.0)

        (= (dummy_3_value d3_0) 1192.0)
		(= (dummy_3_value d3_1) 644.0)
		(= (dummy_3_value d3_2) -1430.0)
		(= (dummy_3_value d3_3) 941.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

