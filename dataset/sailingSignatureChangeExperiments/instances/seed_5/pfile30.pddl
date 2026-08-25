;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -9.0)
		(= (x b1) 5.0)
		(= (y b1) -5.0)

		(= (d p0) 73.0)

        (= (engine_value e0) 8.63)
		(= (engine_value e1) 7.01)

        (= (dummy_1_value d1_0) -84.0)
		(= (dummy_1_value d1_1) -122.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) 6.0)
		(= (dummy_2_value d2_2) -14.0)
		(= (dummy_2_value d2_3) 10.0)
		(= (dummy_2_value d2_4) -15.0)

        (= (dummy_3_value d3_0) 969.0)
		(= (dummy_3_value d3_1) 492.0)
		(= (dummy_3_value d3_2) 573.0)
		(= (dummy_3_value d3_3) 1092.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

