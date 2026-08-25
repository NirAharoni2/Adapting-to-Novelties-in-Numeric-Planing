;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 7.0)
		(= (x b1) 5.0)
		(= (y b1) 10.0)

		(= (d p0) -64.0)

        (= (engine_value e0) 3.77)
		(= (engine_value e1) 6.43)

        (= (dummy_1_value d1_0) 79.0)
		(= (dummy_1_value d1_1) -111.0)
		(= (dummy_1_value d1_2) -123.0)
		(= (dummy_1_value d1_3) 95.0)
		(= (dummy_1_value d1_4) 108.0)

        (= (dummy_2_value d2_0) -5.0)
		(= (dummy_2_value d2_1) -8.0)
		(= (dummy_2_value d2_2) -7.0)
		(= (dummy_2_value d2_3) 5.0)

        (= (dummy_3_value d3_0) 691.0)
		(= (dummy_3_value d3_1) 610.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

