;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 3.0)
		(= (x b1) -4.0)
		(= (y b1) -8.0)

		(= (d p0) 94.0)

        (= (engine_value e0) 8.69)
		(= (engine_value e1) 5.81)

        (= (dummy_1_value d1_0) 61.0)
		(= (dummy_1_value d1_1) 136.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) 5.0)
		(= (dummy_2_value d2_2) 11.0)
		(= (dummy_2_value d2_3) -15.0)
		(= (dummy_2_value d2_4) 9.0)

        (= (dummy_3_value d3_0) 1373.0)
		(= (dummy_3_value d3_1) 1417.0)
		(= (dummy_3_value d3_2) -659.0)
		(= (dummy_3_value d3_3) -518.0)
		(= (dummy_3_value d3_4) 552.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

