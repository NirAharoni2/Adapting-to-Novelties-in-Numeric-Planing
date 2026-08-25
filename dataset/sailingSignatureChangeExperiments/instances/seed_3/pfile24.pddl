;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 8.0)
		(= (x b1) -7.0)
		(= (y b1) 8.0)

		(= (d p0) -81.0)

        (= (engine_value e0) 8.22)
		(= (engine_value e1) 4.33)

        (= (dummy_1_value d1_0) 92.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -12.0)

        (= (dummy_3_value d3_0) 809.0)
		(= (dummy_3_value d3_1) -709.0)
		(= (dummy_3_value d3_2) 1171.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

