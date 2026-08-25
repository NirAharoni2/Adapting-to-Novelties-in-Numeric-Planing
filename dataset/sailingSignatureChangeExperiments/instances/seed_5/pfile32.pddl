;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 10.0)
		(= (x b1) -8.0)
		(= (y b1) -6.0)

		(= (d p0) -117.0)

        (= (engine_value e0) 6.94)
		(= (engine_value e1) 3.57)

        (= (dummy_1_value d1_0) -61.0)
		(= (dummy_1_value d1_1) 96.0)
		(= (dummy_1_value d1_2) 54.0)
		(= (dummy_1_value d1_3) 117.0)
		(= (dummy_1_value d1_4) -140.0)

        (= (dummy_2_value d2_0) 7.0)
		(= (dummy_2_value d2_1) 6.0)
		(= (dummy_2_value d2_2) 10.0)

        (= (dummy_3_value d3_0) -1149.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

