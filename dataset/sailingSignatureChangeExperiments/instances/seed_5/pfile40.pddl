;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 6.0)
		(= (x b1) -5.0)
		(= (y b1) -9.0)

		(= (d p0) -132.0)

        (= (engine_value e0) 4.8)
		(= (engine_value e1) 8.16)

        (= (dummy_1_value d1_0) -84.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 13.0)

        (= (dummy_3_value d3_0) 1166.0)
		(= (dummy_3_value d3_1) -989.0)
		(= (dummy_3_value d3_2) 677.0)
		(= (dummy_3_value d3_3) -1055.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

