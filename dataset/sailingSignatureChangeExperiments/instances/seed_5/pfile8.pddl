;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -5.0)
		(= (x b1) -4.0)
		(= (y b1) -6.0)

		(= (d p0) 77.0)

        (= (engine_value e0) 4.01)
		(= (engine_value e1) 2.16)

        (= (dummy_1_value d1_0) 77.0)
		(= (dummy_1_value d1_1) 60.0)
		(= (dummy_1_value d1_2) -81.0)
		(= (dummy_1_value d1_3) 71.0)
		(= (dummy_1_value d1_4) -136.0)

        (= (dummy_2_value d2_0) -10.0)
		(= (dummy_2_value d2_1) 7.0)
		(= (dummy_2_value d2_2) -15.0)
		(= (dummy_2_value d2_3) -6.0)

        (= (dummy_3_value d3_0) 750.0)
		(= (dummy_3_value d3_1) -458.0)
		(= (dummy_3_value d3_2) 1357.0)
		(= (dummy_3_value d3_3) 1390.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

