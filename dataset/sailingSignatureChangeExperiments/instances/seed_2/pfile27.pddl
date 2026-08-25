;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 3.0)
		(= (x b1) -4.0)
		(= (y b1) -5.0)

		(= (d p0) -115.0)

        (= (engine_value e0) 8.25)
		(= (engine_value e1) 5.13)

        (= (dummy_1_value d1_0) 96.0)
		(= (dummy_1_value d1_1) 54.0)

        (= (dummy_2_value d2_0) -11.0)

        (= (dummy_3_value d3_0) -1110.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

