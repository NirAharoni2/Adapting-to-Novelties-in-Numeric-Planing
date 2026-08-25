;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)

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
		(= (x b0) 6.0)
		(= (y b0) -9.0)
		(= (x b1) -8.0)
		(= (y b1) 8.0)

		(= (d p0) -123.0)

        (= (engine_value e0) 4.6)
		(= (engine_value e1) 9.13)

        (= (dummy_1_value d1_0) -138.0)
		(= (dummy_1_value d1_1) 146.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 5.0)
		(= (dummy_2_value d2_2) -10.0)
		(= (dummy_2_value d2_3) 11.0)

        (= (dummy_3_value d3_0) 624.0)
		(= (dummy_3_value d3_1) -1005.0)
		(= (dummy_3_value d3_2) 781.0)
		(= (dummy_3_value d3_3) -1274.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

