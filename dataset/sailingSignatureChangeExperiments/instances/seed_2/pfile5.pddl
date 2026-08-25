;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 5.0)
		(= (x b1) -7.0)
		(= (y b1) 4.0)

		(= (d p0) 86.0)

        (= (engine_value e0) 6.12)
		(= (engine_value e1) 3.15)

        (= (dummy_1_value d1_0) 72.0)
		(= (dummy_1_value d1_1) 89.0)
		(= (dummy_1_value d1_2) -91.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) -8.0)
		(= (dummy_2_value d2_3) 15.0)

        (= (dummy_3_value d3_0) 1494.0)
		(= (dummy_3_value d3_1) -1033.0)
		(= (dummy_3_value d3_2) -879.0)
		(= (dummy_3_value d3_3) 1290.0)
		(= (dummy_3_value d3_4) 719.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

