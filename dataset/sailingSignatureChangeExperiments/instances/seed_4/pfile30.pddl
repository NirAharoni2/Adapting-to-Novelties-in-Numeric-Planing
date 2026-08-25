;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)

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
		(= (x b0) -5.0)
		(= (y b0) 3.0)
		(= (x b1) -5.0)
		(= (y b1) -4.0)

		(= (d p0) -104.0)

        (= (engine_value e0) 5.18)
		(= (engine_value e1) 2.22)

        (= (dummy_1_value d1_0) 60.0)
		(= (dummy_1_value d1_1) -124.0)
		(= (dummy_1_value d1_2) -73.0)
		(= (dummy_1_value d1_3) 101.0)
		(= (dummy_1_value d1_4) -91.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) -5.0)

        (= (dummy_3_value d3_0) 611.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

