;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -5.0)
		(= (x b1) -6.0)
		(= (y b1) 3.0)

		(= (d p0) -64.0)

        (= (engine_value e0) 8.86)
		(= (engine_value e1) 8.2)

        (= (dummy_1_value d1_0) -145.0)
		(= (dummy_1_value d1_1) -147.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) -13.0)
		(= (dummy_2_value d2_2) -11.0)

        (= (dummy_3_value d3_0) -1181.0)
		(= (dummy_3_value d3_1) -463.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

