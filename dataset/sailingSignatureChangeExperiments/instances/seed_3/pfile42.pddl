;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 4.0)
		(= (x b1) 8.0)
		(= (y b1) -6.0)

		(= (d p0) 146.0)

        (= (engine_value e0) 4.86)
		(= (engine_value e1) 2.94)

        (= (dummy_1_value d1_0) -50.0)
		(= (dummy_1_value d1_1) -105.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) 7.0)
		(= (dummy_2_value d2_3) -14.0)

        (= (dummy_3_value d3_0) 550.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

