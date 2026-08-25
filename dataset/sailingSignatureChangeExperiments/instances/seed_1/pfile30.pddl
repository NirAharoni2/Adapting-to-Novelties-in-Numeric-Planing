;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) 9.0)
		(= (x b1) 5.0)
		(= (y b1) 6.0)

		(= (d p0) 133.0)

        (= (engine_value e0) 3.83)
		(= (engine_value e1) 4.2)

        (= (dummy_1_value d1_0) 88.0)
		(= (dummy_1_value d1_1) -129.0)
		(= (dummy_1_value d1_2) 108.0)
		(= (dummy_1_value d1_3) 101.0)
		(= (dummy_1_value d1_4) 61.0)

        (= (dummy_2_value d2_0) -12.0)
		(= (dummy_2_value d2_1) 7.0)
		(= (dummy_2_value d2_2) -11.0)

        (= (dummy_3_value d3_0) -1145.0)
		(= (dummy_3_value d3_1) 640.0)
		(= (dummy_3_value d3_2) 1179.0)
		(= (dummy_3_value d3_3) 511.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

