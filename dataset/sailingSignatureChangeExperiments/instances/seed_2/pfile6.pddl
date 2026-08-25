;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -6.0)
		(= (x b1) -9.0)
		(= (y b1) -5.0)

		(= (d p0) -147.0)

        (= (engine_value e0) 7.36)
		(= (engine_value e1) 5.63)

        (= (dummy_1_value d1_0) 85.0)
		(= (dummy_1_value d1_1) 125.0)
		(= (dummy_1_value d1_2) -65.0)
		(= (dummy_1_value d1_3) -148.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) 11.0)

        (= (dummy_3_value d3_0) -1480.0)
		(= (dummy_3_value d3_1) 575.0)
		(= (dummy_3_value d3_2) -775.0)
		(= (dummy_3_value d3_3) 774.0)
		(= (dummy_3_value d3_4) 883.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

