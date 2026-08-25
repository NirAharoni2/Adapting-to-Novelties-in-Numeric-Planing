;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -6.0)
		(= (x b1) 4.0)
		(= (y b1) -9.0)

		(= (d p0) -129.0)

        (= (engine_value e0) 5.42)
		(= (engine_value e1) 2.36)

        (= (dummy_1_value d1_0) 141.0)
		(= (dummy_1_value d1_1) 98.0)
		(= (dummy_1_value d1_2) -117.0)
		(= (dummy_1_value d1_3) -147.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) -7.0)
		(= (dummy_2_value d2_3) -12.0)
		(= (dummy_2_value d2_4) -12.0)

        (= (dummy_3_value d3_0) 511.0)
		(= (dummy_3_value d3_1) -728.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

