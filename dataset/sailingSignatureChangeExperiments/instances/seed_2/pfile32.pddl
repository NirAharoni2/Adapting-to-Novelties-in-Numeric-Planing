;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) 6.0)
		(= (x b1) -5.0)
		(= (y b1) -8.0)

		(= (d p0) 140.0)

        (= (engine_value e0) 2.69)
		(= (engine_value e1) 8.67)

        (= (dummy_1_value d1_0) 64.0)
		(= (dummy_1_value d1_1) 110.0)
		(= (dummy_1_value d1_2) 101.0)
		(= (dummy_1_value d1_3) -97.0)
		(= (dummy_1_value d1_4) -102.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -11.0)
		(= (dummy_2_value d2_2) -9.0)

        (= (dummy_3_value d3_0) 722.0)
		(= (dummy_3_value d3_1) 805.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

