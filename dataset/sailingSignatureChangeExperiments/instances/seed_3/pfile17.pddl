;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 4.0)
		(= (x b1) -4.0)
		(= (y b1) -8.0)

		(= (d p0) 92.0)

        (= (engine_value e0) 5.26)
		(= (engine_value e1) 8.52)

        (= (dummy_1_value d1_0) -55.0)
		(= (dummy_1_value d1_1) -98.0)
		(= (dummy_1_value d1_2) 119.0)
		(= (dummy_1_value d1_3) 115.0)

        (= (dummy_2_value d2_0) -13.0)
		(= (dummy_2_value d2_1) 6.0)
		(= (dummy_2_value d2_2) 7.0)
		(= (dummy_2_value d2_3) -8.0)

        (= (dummy_3_value d3_0) -679.0)
		(= (dummy_3_value d3_1) -647.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

