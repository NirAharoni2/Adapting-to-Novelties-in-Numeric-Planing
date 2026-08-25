;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -6.0)
		(= (x b1) -9.0)
		(= (y b1) -9.0)

		(= (d p0) -60.0)

        (= (engine_value e0) 8.98)
		(= (engine_value e1) 4.67)

        (= (dummy_1_value d1_0) 55.0)
		(= (dummy_1_value d1_1) 126.0)
		(= (dummy_1_value d1_2) 67.0)
		(= (dummy_1_value d1_3) 45.0)

        (= (dummy_2_value d2_0) 13.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) -9.0)
		(= (dummy_2_value d2_3) 8.0)
		(= (dummy_2_value d2_4) -11.0)

        (= (dummy_3_value d3_0) -1290.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

