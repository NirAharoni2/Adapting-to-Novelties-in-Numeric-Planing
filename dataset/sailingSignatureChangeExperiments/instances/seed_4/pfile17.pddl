;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -4.0)
		(= (x b1) -7.0)
		(= (y b1) -7.0)

		(= (d p0) 144.0)

        (= (engine_value e0) 7.42)
		(= (engine_value e1) 5.07)

        (= (dummy_1_value d1_0) 57.0)
		(= (dummy_1_value d1_1) -45.0)
		(= (dummy_1_value d1_2) -94.0)
		(= (dummy_1_value d1_3) -138.0)

        (= (dummy_2_value d2_0) -8.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) 14.0)
		(= (dummy_2_value d2_3) 13.0)
		(= (dummy_2_value d2_4) -5.0)

        (= (dummy_3_value d3_0) 818.0)
		(= (dummy_3_value d3_1) -767.0)
		(= (dummy_3_value d3_2) -720.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

