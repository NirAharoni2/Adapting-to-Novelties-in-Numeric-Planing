;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 3.0)
		(= (x b1) -8.0)
		(= (y b1) -4.0)

		(= (d p0) 65.0)

        (= (engine_value e0) 2.07)
		(= (engine_value e1) 3.74)

        (= (dummy_1_value d1_0) -85.0)
		(= (dummy_1_value d1_1) -59.0)
		(= (dummy_1_value d1_2) 56.0)
		(= (dummy_1_value d1_3) 50.0)
		(= (dummy_1_value d1_4) 70.0)

        (= (dummy_2_value d2_0) 11.0)

        (= (dummy_3_value d3_0) 629.0)
		(= (dummy_3_value d3_1) -1290.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

