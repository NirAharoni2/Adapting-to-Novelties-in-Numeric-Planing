;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) 5.0)
		(= (x b1) 5.0)
		(= (y b1) 7.0)

		(= (d p0) -90.0)

        (= (engine_value e0) 3.13)
		(= (engine_value e1) 9.32)

        (= (dummy_1_value d1_0) -116.0)
		(= (dummy_1_value d1_1) 134.0)
		(= (dummy_1_value d1_2) 50.0)
		(= (dummy_1_value d1_3) -149.0)
		(= (dummy_1_value d1_4) 87.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) 5.0)

        (= (dummy_3_value d3_0) -958.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

