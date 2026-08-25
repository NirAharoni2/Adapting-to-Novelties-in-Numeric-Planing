;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 4.0)
		(= (x b1) -6.0)
		(= (y b1) -9.0)

		(= (d p0) -111.0)

        (= (engine_value e0) 7.22)
		(= (engine_value e1) 5.46)

        (= (dummy_1_value d1_0) -115.0)
		(= (dummy_1_value d1_1) -136.0)
		(= (dummy_1_value d1_2) 94.0)
		(= (dummy_1_value d1_3) -150.0)

        (= (dummy_2_value d2_0) 5.0)

        (= (dummy_3_value d3_0) -1192.0)
		(= (dummy_3_value d3_1) 1433.0)
		(= (dummy_3_value d3_2) 667.0)
		(= (dummy_3_value d3_3) 484.0)
		(= (dummy_3_value d3_4) -1383.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

