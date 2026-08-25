;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -8.0)
		(= (x b1) 9.0)
		(= (y b1) -4.0)

		(= (d p0) 63.0)

        (= (engine_value e0) 4.86)
		(= (engine_value e1) 5.36)

        (= (dummy_1_value d1_0) -128.0)
		(= (dummy_1_value d1_1) 67.0)
		(= (dummy_1_value d1_2) 140.0)
		(= (dummy_1_value d1_3) -90.0)
		(= (dummy_1_value d1_4) -119.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) 5.0)

        (= (dummy_3_value d3_0) -654.0)
		(= (dummy_3_value d3_1) -789.0)
		(= (dummy_3_value d3_2) 790.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

