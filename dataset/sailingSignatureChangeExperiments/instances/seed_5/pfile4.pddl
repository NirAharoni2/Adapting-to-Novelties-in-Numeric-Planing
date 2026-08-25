;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)

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
		(= (x b0) -6.0)
		(= (y b0) 6.0)
		(= (x b1) -10.0)
		(= (y b1) 3.0)

		(= (d p0) -62.0)

        (= (engine_value e0) 3.04)
		(= (engine_value e1) 7.85)

        (= (dummy_1_value d1_0) 111.0)
		(= (dummy_1_value d1_1) 56.0)
		(= (dummy_1_value d1_2) -134.0)
		(= (dummy_1_value d1_3) 76.0)
		(= (dummy_1_value d1_4) -45.0)

        (= (dummy_2_value d2_0) 15.0)
		(= (dummy_2_value d2_1) -10.0)
		(= (dummy_2_value d2_2) 10.0)
		(= (dummy_2_value d2_3) -11.0)
		(= (dummy_2_value d2_4) -11.0)

        (= (dummy_3_value d3_0) 1458.0)
		(= (dummy_3_value d3_1) 974.0)
		(= (dummy_3_value d3_2) -1406.0)
		(= (dummy_3_value d3_3) -679.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

