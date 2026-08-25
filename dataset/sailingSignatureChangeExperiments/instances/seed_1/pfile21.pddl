;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 3.0)
		(= (x b1) -4.0)
		(= (y b1) -8.0)

		(= (d p0) -140.0)

        (= (engine_value e0) 2.22)
		(= (engine_value e1) 7.1)

        (= (dummy_1_value d1_0) 117.0)
		(= (dummy_1_value d1_1) 115.0)
		(= (dummy_1_value d1_2) -84.0)
		(= (dummy_1_value d1_3) 112.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) -9.0)

        (= (dummy_3_value d3_0) 998.0)
		(= (dummy_3_value d3_1) -1129.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

