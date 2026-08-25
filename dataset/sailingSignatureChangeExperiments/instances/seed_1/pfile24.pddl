;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 7.0)
		(= (x b1) -9.0)
		(= (y b1) -5.0)

		(= (d p0) 105.0)

        (= (engine_value e0) 5.61)
		(= (engine_value e1) 4.24)

        (= (dummy_1_value d1_0) -112.0)
		(= (dummy_1_value d1_1) 85.0)
		(= (dummy_1_value d1_2) 53.0)
		(= (dummy_1_value d1_3) 51.0)
		(= (dummy_1_value d1_4) -98.0)

        (= (dummy_2_value d2_0) 7.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) -5.0)

        (= (dummy_3_value d3_0) 839.0)
		(= (dummy_3_value d3_1) -872.0)
		(= (dummy_3_value d3_2) -967.0)
		(= (dummy_3_value d3_3) -1237.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

