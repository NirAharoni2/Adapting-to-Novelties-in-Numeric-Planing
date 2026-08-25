;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 5.0)
		(= (x b1) -8.0)
		(= (y b1) -6.0)

		(= (d p0) 116.0)

        (= (engine_value e0) 3.45)
		(= (engine_value e1) 9.15)

        (= (dummy_1_value d1_0) 122.0)
		(= (dummy_1_value d1_1) 125.0)
		(= (dummy_1_value d1_2) 82.0)
		(= (dummy_1_value d1_3) 146.0)

        (= (dummy_2_value d2_0) -7.0)
		(= (dummy_2_value d2_1) 9.0)
		(= (dummy_2_value d2_2) 10.0)

        (= (dummy_3_value d3_0) 976.0)
		(= (dummy_3_value d3_1) 822.0)
		(= (dummy_3_value d3_2) 1395.0)
		(= (dummy_3_value d3_3) -904.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

