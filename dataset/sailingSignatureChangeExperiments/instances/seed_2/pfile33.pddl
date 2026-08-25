;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 4.0)
		(= (x b1) -9.0)
		(= (y b1) -7.0)

		(= (d p0) -106.0)

        (= (engine_value e0) 7.51)
		(= (engine_value e1) 8.67)

        (= (dummy_1_value d1_0) -150.0)
		(= (dummy_1_value d1_1) 85.0)

        (= (dummy_2_value d2_0) -13.0)

        (= (dummy_3_value d3_0) -1220.0)
		(= (dummy_3_value d3_1) -1256.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

