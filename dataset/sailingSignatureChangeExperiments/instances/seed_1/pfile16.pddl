;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 8.0)
		(= (x b1) -5.0)
		(= (y b1) -9.0)

		(= (d p0) -121.0)

        (= (engine_value e0) 6.79)
		(= (engine_value e1) 9.05)

        (= (dummy_1_value d1_0) 99.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) 9.0)
		(= (dummy_2_value d2_2) 15.0)
		(= (dummy_2_value d2_3) -13.0)

        (= (dummy_3_value d3_0) 1008.0)
		(= (dummy_3_value d3_1) -1496.0)
		(= (dummy_3_value d3_2) -1053.0)
		(= (dummy_3_value d3_3) -596.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

