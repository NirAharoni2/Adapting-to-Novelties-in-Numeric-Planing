;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) 5.0)
		(= (x b1) 8.0)
		(= (y b1) -4.0)

		(= (d p0) 81.0)

        (= (engine_value e0) 8.67)
		(= (engine_value e1) 9.13)

        (= (dummy_1_value d1_0) 138.0)
		(= (dummy_1_value d1_1) 118.0)
		(= (dummy_1_value d1_2) 100.0)
		(= (dummy_1_value d1_3) 82.0)
		(= (dummy_1_value d1_4) -75.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) 7.0)
		(= (dummy_2_value d2_2) -14.0)

        (= (dummy_3_value d3_0) 1404.0)
		(= (dummy_3_value d3_1) 573.0)
		(= (dummy_3_value d3_2) 1318.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

