;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -6.0)
		(= (x b1) 7.0)
		(= (y b1) -9.0)

		(= (d p0) -141.0)

        (= (engine_value e0) 5.37)
		(= (engine_value e1) 8.19)

        (= (dummy_1_value d1_0) 128.0)
		(= (dummy_1_value d1_1) 70.0)
		(= (dummy_1_value d1_2) 109.0)
		(= (dummy_1_value d1_3) -132.0)
		(= (dummy_1_value d1_4) -87.0)

        (= (dummy_2_value d2_0) -15.0)

        (= (dummy_3_value d3_0) 1088.0)
		(= (dummy_3_value d3_1) -564.0)
		(= (dummy_3_value d3_2) 471.0)
		(= (dummy_3_value d3_3) -757.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

