;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 6.0)
		(= (x b1) -10.0)
		(= (y b1) -9.0)

		(= (d p0) 56.0)

        (= (engine_value e0) 3.25)
		(= (engine_value e1) 8.2)

        (= (dummy_1_value d1_0) -82.0)
		(= (dummy_1_value d1_1) -150.0)
		(= (dummy_1_value d1_2) -50.0)

        (= (dummy_2_value d2_0) -13.0)
		(= (dummy_2_value d2_1) -15.0)
		(= (dummy_2_value d2_2) 14.0)
		(= (dummy_2_value d2_3) 12.0)

        (= (dummy_3_value d3_0) 1228.0)
		(= (dummy_3_value d3_1) 1169.0)
		(= (dummy_3_value d3_2) -655.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

