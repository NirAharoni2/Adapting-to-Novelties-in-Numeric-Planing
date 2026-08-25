;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -5.0)
		(= (x b1) -6.0)
		(= (y b1) 10.0)

		(= (d p0) -66.0)

        (= (engine_value e0) 8.86)
		(= (engine_value e1) 4.56)

        (= (dummy_1_value d1_0) -89.0)
		(= (dummy_1_value d1_1) 87.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) -5.0)

        (= (dummy_3_value d3_0) -1348.0)
		(= (dummy_3_value d3_1) 510.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

