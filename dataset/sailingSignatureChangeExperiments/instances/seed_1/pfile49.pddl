;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 10.0)
		(= (x b1) 9.0)
		(= (y b1) 6.0)

		(= (d p0) -146.0)

        (= (engine_value e0) 3.93)
		(= (engine_value e1) 3.8)

        (= (dummy_1_value d1_0) 85.0)
		(= (dummy_1_value d1_1) 121.0)

        (= (dummy_2_value d2_0) -7.0)
		(= (dummy_2_value d2_1) -8.0)
		(= (dummy_2_value d2_2) 9.0)
		(= (dummy_2_value d2_3) -13.0)
		(= (dummy_2_value d2_4) 9.0)

        (= (dummy_3_value d3_0) -659.0)
		(= (dummy_3_value d3_1) -514.0)
		(= (dummy_3_value d3_2) -822.0)
		(= (dummy_3_value d3_3) 1146.0)
		(= (dummy_3_value d3_4) -616.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

