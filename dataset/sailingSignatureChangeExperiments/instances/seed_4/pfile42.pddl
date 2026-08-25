;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)

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
		(= (x b0) 10.0)
		(= (y b0) -9.0)
		(= (x b1) 8.0)
		(= (y b1) 6.0)

		(= (d p0) -127.0)

        (= (engine_value e0) 8.42)
		(= (engine_value e1) 4.17)

        (= (dummy_1_value d1_0) 96.0)
		(= (dummy_1_value d1_1) -144.0)
		(= (dummy_1_value d1_2) -75.0)
		(= (dummy_1_value d1_3) -96.0)

        (= (dummy_2_value d2_0) 12.0)

        (= (dummy_3_value d3_0) -1052.0)
		(= (dummy_3_value d3_1) 1148.0)
		(= (dummy_3_value d3_2) -828.0)
		(= (dummy_3_value d3_3) 1371.0)
		(= (dummy_3_value d3_4) 556.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

