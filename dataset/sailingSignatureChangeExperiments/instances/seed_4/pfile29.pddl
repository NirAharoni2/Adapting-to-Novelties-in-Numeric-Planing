;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 8.0)
		(= (x b1) 6.0)
		(= (y b1) -9.0)

		(= (d p0) 124.0)

        (= (engine_value e0) 9.22)
		(= (engine_value e1) 9.35)

        (= (dummy_1_value d1_0) 96.0)
		(= (dummy_1_value d1_1) 54.0)
		(= (dummy_1_value d1_2) -93.0)
		(= (dummy_1_value d1_3) 109.0)
		(= (dummy_1_value d1_4) -97.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) -12.0)
		(= (dummy_2_value d2_2) 9.0)
		(= (dummy_2_value d2_3) -10.0)

        (= (dummy_3_value d3_0) 766.0)
		(= (dummy_3_value d3_1) -1042.0)
		(= (dummy_3_value d3_2) 488.0)
		(= (dummy_3_value d3_3) 508.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

