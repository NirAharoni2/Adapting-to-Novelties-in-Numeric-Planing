;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 4.0)
		(= (x b1) -9.0)
		(= (y b1) 6.0)

		(= (d p0) 127.0)

        (= (engine_value e0) 9.83)
		(= (engine_value e1) 2.28)

        (= (dummy_1_value d1_0) -149.0)
		(= (dummy_1_value d1_1) -114.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -12.0)
		(= (dummy_2_value d2_2) -7.0)
		(= (dummy_2_value d2_3) -12.0)
		(= (dummy_2_value d2_4) -10.0)

        (= (dummy_3_value d3_0) 1159.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

