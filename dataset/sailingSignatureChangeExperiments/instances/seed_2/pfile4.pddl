;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -10.0)
		(= (x b1) -4.0)
		(= (y b1) -9.0)

		(= (d p0) 122.0)

        (= (engine_value e0) 6.18)
		(= (engine_value e1) 2.02)

        (= (dummy_1_value d1_0) 128.0)

        (= (dummy_2_value d2_0) -5.0)
		(= (dummy_2_value d2_1) -5.0)
		(= (dummy_2_value d2_2) 12.0)

        (= (dummy_3_value d3_0) -987.0)
		(= (dummy_3_value d3_1) -921.0)
		(= (dummy_3_value d3_2) 498.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

