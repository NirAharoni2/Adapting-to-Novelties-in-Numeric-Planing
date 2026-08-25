;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -8.0)
		(= (x b1) 8.0)
		(= (y b1) 3.0)

		(= (d p0) 118.0)

        (= (engine_value e0) 7.46)
		(= (engine_value e1) 6.18)

        (= (dummy_1_value d1_0) 146.0)
		(= (dummy_1_value d1_1) 90.0)
		(= (dummy_1_value d1_2) 129.0)
		(= (dummy_1_value d1_3) 126.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -9.0)

        (= (dummy_3_value d3_0) -940.0)
		(= (dummy_3_value d3_1) 1406.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

