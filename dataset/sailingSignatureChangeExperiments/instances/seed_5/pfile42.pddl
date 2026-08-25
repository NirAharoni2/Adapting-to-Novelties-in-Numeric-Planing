;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 3.0)
		(= (x b1) -5.0)
		(= (y b1) 3.0)

		(= (d p0) -84.0)

        (= (engine_value e0) 4.28)
		(= (engine_value e1) 7.25)

        (= (dummy_1_value d1_0) -102.0)
		(= (dummy_1_value d1_1) -115.0)
		(= (dummy_1_value d1_2) 99.0)

        (= (dummy_2_value d2_0) 13.0)
		(= (dummy_2_value d2_1) 13.0)
		(= (dummy_2_value d2_2) -10.0)
		(= (dummy_2_value d2_3) -8.0)

        (= (dummy_3_value d3_0) -570.0)
		(= (dummy_3_value d3_1) -677.0)
		(= (dummy_3_value d3_2) 1437.0)
		(= (dummy_3_value d3_3) -600.0)
		(= (dummy_3_value d3_4) 587.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

