;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -5.0)
		(= (x b1) -5.0)
		(= (y b1) -6.0)

		(= (d p0) 141.0)

        (= (engine_value e0) 6.94)
		(= (engine_value e1) 5.32)

        (= (dummy_1_value d1_0) -71.0)
		(= (dummy_1_value d1_1) -66.0)
		(= (dummy_1_value d1_2) -86.0)
		(= (dummy_1_value d1_3) -114.0)
		(= (dummy_1_value d1_4) -96.0)

        (= (dummy_2_value d2_0) 11.0)
		(= (dummy_2_value d2_1) 12.0)

        (= (dummy_3_value d3_0) -888.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

