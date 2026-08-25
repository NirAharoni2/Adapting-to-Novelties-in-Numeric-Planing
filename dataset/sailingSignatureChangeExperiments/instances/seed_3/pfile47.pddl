;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 3.0)
		(= (x b1) -4.0)
		(= (y b1) 6.0)

		(= (d p0) -97.0)

        (= (engine_value e0) 6.47)
		(= (engine_value e1) 6.9)

        (= (dummy_1_value d1_0) -144.0)
		(= (dummy_1_value d1_1) 62.0)
		(= (dummy_1_value d1_2) -91.0)
		(= (dummy_1_value d1_3) 146.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) -10.0)
		(= (dummy_2_value d2_2) -14.0)

        (= (dummy_3_value d3_0) -535.0)
		(= (dummy_3_value d3_1) 585.0)
		(= (dummy_3_value d3_2) -458.0)
		(= (dummy_3_value d3_3) -775.0)
		(= (dummy_3_value d3_4) 973.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

