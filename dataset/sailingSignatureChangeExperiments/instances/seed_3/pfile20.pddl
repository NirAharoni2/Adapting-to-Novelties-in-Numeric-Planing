;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -4.0)
		(= (x b1) 5.0)
		(= (y b1) -9.0)

		(= (d p0) -138.0)

        (= (engine_value e0) 9.3)
		(= (engine_value e1) 6.76)

        (= (dummy_1_value d1_0) 76.0)
		(= (dummy_1_value d1_1) 144.0)
		(= (dummy_1_value d1_2) 146.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -11.0)
		(= (dummy_2_value d2_2) 8.0)
		(= (dummy_2_value d2_3) -10.0)

        (= (dummy_3_value d3_0) -851.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

