;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -4.0)
		(= (x b1) 9.0)
		(= (y b1) -5.0)

		(= (d p0) 101.0)

        (= (engine_value e0) 4.14)
		(= (engine_value e1) 8.18)

        (= (dummy_1_value d1_0) 126.0)
		(= (dummy_1_value d1_1) -73.0)
		(= (dummy_1_value d1_2) -79.0)
		(= (dummy_1_value d1_3) -149.0)
		(= (dummy_1_value d1_4) -81.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) 15.0)
		(= (dummy_2_value d2_3) 8.0)
		(= (dummy_2_value d2_4) -6.0)

        (= (dummy_3_value d3_0) -703.0)
		(= (dummy_3_value d3_1) 626.0)
		(= (dummy_3_value d3_2) -1056.0)
		(= (dummy_3_value d3_3) 1345.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

