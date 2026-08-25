;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -9.0)
		(= (x b1) -8.0)
		(= (y b1) -6.0)

		(= (d p0) 104.0)

        (= (engine_value e0) 7.48)
		(= (engine_value e1) 3.81)

        (= (dummy_1_value d1_0) -90.0)
		(= (dummy_1_value d1_1) 89.0)
		(= (dummy_1_value d1_2) -148.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) 15.0)
		(= (dummy_2_value d2_3) -9.0)
		(= (dummy_2_value d2_4) 5.0)

        (= (dummy_3_value d3_0) -1354.0)
		(= (dummy_3_value d3_1) -692.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

