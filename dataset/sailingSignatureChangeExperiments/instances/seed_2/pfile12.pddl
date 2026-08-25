;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -7.0)
		(= (x b1) -10.0)
		(= (y b1) 7.0)

		(= (d p0) -79.0)

        (= (engine_value e0) 5.99)
		(= (engine_value e1) 3.07)

        (= (dummy_1_value d1_0) 120.0)
		(= (dummy_1_value d1_1) -123.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) 10.0)
		(= (dummy_2_value d2_3) 10.0)

        (= (dummy_3_value d3_0) -874.0)
		(= (dummy_3_value d3_1) 607.0)
		(= (dummy_3_value d3_2) 544.0)
		(= (dummy_3_value d3_3) -503.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

