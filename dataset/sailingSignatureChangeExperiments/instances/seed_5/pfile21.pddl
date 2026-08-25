;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -7.0)
		(= (x b1) -5.0)
		(= (y b1) -3.0)

		(= (d p0) 142.0)

        (= (engine_value e0) 7.54)
		(= (engine_value e1) 7.36)

        (= (dummy_1_value d1_0) 129.0)
		(= (dummy_1_value d1_1) -88.0)
		(= (dummy_1_value d1_2) 100.0)
		(= (dummy_1_value d1_3) -142.0)
		(= (dummy_1_value d1_4) -113.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) 8.0)

        (= (dummy_3_value d3_0) 738.0)
		(= (dummy_3_value d3_1) 526.0)
		(= (dummy_3_value d3_2) 1153.0)
		(= (dummy_3_value d3_3) 1392.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

