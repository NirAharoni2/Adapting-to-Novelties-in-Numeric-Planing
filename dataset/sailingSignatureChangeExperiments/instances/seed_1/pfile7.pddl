;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -8.0)
		(= (x b1) -4.0)
		(= (y b1) 7.0)

		(= (d p0) -105.0)

        (= (engine_value e0) 4.13)
		(= (engine_value e1) 2.77)

        (= (dummy_1_value d1_0) -92.0)
		(= (dummy_1_value d1_1) 133.0)
		(= (dummy_1_value d1_2) 126.0)
		(= (dummy_1_value d1_3) 52.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) -12.0)

        (= (dummy_3_value d3_0) 718.0)
		(= (dummy_3_value d3_1) -1380.0)
		(= (dummy_3_value d3_2) -509.0)
		(= (dummy_3_value d3_3) 1201.0)
		(= (dummy_3_value d3_4) -891.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

