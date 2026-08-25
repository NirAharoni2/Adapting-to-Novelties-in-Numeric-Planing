;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -4.0)
		(= (x b1) 9.0)
		(= (y b1) 6.0)

		(= (d p0) 47.0)

        (= (engine_value e0) 4.48)
		(= (engine_value e1) 8.76)

        (= (dummy_1_value d1_0) 144.0)
		(= (dummy_1_value d1_1) -105.0)
		(= (dummy_1_value d1_2) -95.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) -5.0)

        (= (dummy_3_value d3_0) 1344.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

