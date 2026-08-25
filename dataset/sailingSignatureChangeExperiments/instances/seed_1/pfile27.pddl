;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -9.0)
		(= (x b1) 10.0)
		(= (y b1) -10.0)

		(= (d p0) -81.0)

        (= (engine_value e0) 2.29)
		(= (engine_value e1) 5.37)

        (= (dummy_1_value d1_0) -81.0)
		(= (dummy_1_value d1_1) 47.0)
		(= (dummy_1_value d1_2) -141.0)
		(= (dummy_1_value d1_3) -122.0)

        (= (dummy_2_value d2_0) -7.0)
		(= (dummy_2_value d2_1) 13.0)
		(= (dummy_2_value d2_2) 9.0)
		(= (dummy_2_value d2_3) 10.0)
		(= (dummy_2_value d2_4) -13.0)

        (= (dummy_3_value d3_0) 1305.0)
		(= (dummy_3_value d3_1) -1367.0)
		(= (dummy_3_value d3_2) 1447.0)
		(= (dummy_3_value d3_3) -514.0)
		(= (dummy_3_value d3_4) -1058.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

