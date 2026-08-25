;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 5.0)
		(= (x b1) -5.0)
		(= (y b1) -6.0)

		(= (d p0) 99.0)

        (= (engine_value e0) 9.49)
		(= (engine_value e1) 4.42)

        (= (dummy_1_value d1_0) 136.0)
		(= (dummy_1_value d1_1) -45.0)
		(= (dummy_1_value d1_2) -88.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) 6.0)
		(= (dummy_2_value d2_2) 15.0)
		(= (dummy_2_value d2_3) 6.0)
		(= (dummy_2_value d2_4) 6.0)

        (= (dummy_3_value d3_0) 957.0)
		(= (dummy_3_value d3_1) 886.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

