;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -8.0)
		(= (x b1) 6.0)
		(= (y b1) -10.0)

		(= (d p0) -140.0)

        (= (engine_value e0) 7.9)
		(= (engine_value e1) 9.66)

        (= (dummy_1_value d1_0) -102.0)
		(= (dummy_1_value d1_1) -106.0)
		(= (dummy_1_value d1_2) 102.0)

        (= (dummy_2_value d2_0) 12.0)

        (= (dummy_3_value d3_0) -1120.0)
		(= (dummy_3_value d3_1) -1101.0)
		(= (dummy_3_value d3_2) -1242.0)
		(= (dummy_3_value d3_3) 550.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

