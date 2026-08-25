;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -8.0)
		(= (x b1) -4.0)
		(= (y b1) -5.0)

		(= (d p0) 113.0)

        (= (engine_value e0) 7.42)
		(= (engine_value e1) 7.81)

        (= (dummy_1_value d1_0) 64.0)
		(= (dummy_1_value d1_1) -149.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 7.0)

        (= (dummy_3_value d3_0) 929.0)
		(= (dummy_3_value d3_1) 1228.0)
		(= (dummy_3_value d3_2) -852.0)
		(= (dummy_3_value d3_3) -1122.0)
		(= (dummy_3_value d3_4) -1463.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

