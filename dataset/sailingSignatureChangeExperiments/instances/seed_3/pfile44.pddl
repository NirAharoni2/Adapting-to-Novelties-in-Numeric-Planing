;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)

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
		(= (x b0) -7.0)
		(= (y b0) 7.0)
		(= (x b1) 6.0)
		(= (y b1) 4.0)

		(= (d p0) 112.0)

        (= (engine_value e0) 8.4)
		(= (engine_value e1) 3.42)

        (= (dummy_1_value d1_0) -94.0)
		(= (dummy_1_value d1_1) -51.0)
		(= (dummy_1_value d1_2) 61.0)
		(= (dummy_1_value d1_3) 77.0)

        (= (dummy_2_value d2_0) 7.0)

        (= (dummy_3_value d3_0) 760.0)
		(= (dummy_3_value d3_1) -1428.0)
		(= (dummy_3_value d3_2) 1227.0)
		(= (dummy_3_value d3_3) 471.0)
		(= (dummy_3_value d3_4) -847.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

