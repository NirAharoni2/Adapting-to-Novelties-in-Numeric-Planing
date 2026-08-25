;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 8.0)
		(= (x b1) 9.0)
		(= (y b1) 4.0)

		(= (d p0) 66.0)

        (= (engine_value e0) 7.73)
		(= (engine_value e1) 4.22)

        (= (dummy_1_value d1_0) 73.0)
		(= (dummy_1_value d1_1) 78.0)
		(= (dummy_1_value d1_2) -124.0)
		(= (dummy_1_value d1_3) 144.0)
		(= (dummy_1_value d1_4) 85.0)

        (= (dummy_2_value d2_0) 5.0)
		(= (dummy_2_value d2_1) -5.0)
		(= (dummy_2_value d2_2) -6.0)
		(= (dummy_2_value d2_3) 14.0)
		(= (dummy_2_value d2_4) -5.0)

        (= (dummy_3_value d3_0) -872.0)
		(= (dummy_3_value d3_1) -690.0)
		(= (dummy_3_value d3_2) -972.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

