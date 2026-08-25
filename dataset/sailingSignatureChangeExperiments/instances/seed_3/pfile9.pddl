;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -9.0)
		(= (x b1) -6.0)
		(= (y b1) 6.0)

		(= (d p0) 110.0)

        (= (engine_value e0) 5.45)
		(= (engine_value e1) 4.98)

        (= (dummy_1_value d1_0) -76.0)
		(= (dummy_1_value d1_1) -77.0)
		(= (dummy_1_value d1_2) -124.0)
		(= (dummy_1_value d1_3) 118.0)

        (= (dummy_2_value d2_0) -11.0)

        (= (dummy_3_value d3_0) -576.0)
		(= (dummy_3_value d3_1) 843.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

