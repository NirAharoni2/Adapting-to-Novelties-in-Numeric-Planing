;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -8.0)
		(= (x b1) -6.0)
		(= (y b1) 10.0)

		(= (d p0) 133.0)

        (= (engine_value e0) 4.29)
		(= (engine_value e1) 9.81)

        (= (dummy_1_value d1_0) -137.0)
		(= (dummy_1_value d1_1) 122.0)
		(= (dummy_1_value d1_2) -82.0)
		(= (dummy_1_value d1_3) -48.0)

        (= (dummy_2_value d2_0) -10.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) 10.0)

        (= (dummy_3_value d3_0) -851.0)
		(= (dummy_3_value d3_1) -1053.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

