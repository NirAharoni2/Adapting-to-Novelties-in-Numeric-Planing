;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -5.0)
		(= (x b1) -6.0)
		(= (y b1) 3.0)

		(= (d p0) 107.0)

        (= (engine_value e0) 2.8)
		(= (engine_value e1) 9.59)

        (= (dummy_1_value d1_0) -102.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) 5.0)
		(= (dummy_2_value d2_2) -5.0)

        (= (dummy_3_value d3_0) 817.0)
		(= (dummy_3_value d3_1) -638.0)
		(= (dummy_3_value d3_2) 1028.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

