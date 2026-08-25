;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 4.0)
		(= (x b1) -8.0)
		(= (y b1) -9.0)

		(= (d p0) -119.0)

        (= (engine_value e0) 2.79)
		(= (engine_value e1) 2.8)

        (= (dummy_1_value d1_0) -95.0)
		(= (dummy_1_value d1_1) -121.0)
		(= (dummy_1_value d1_2) -136.0)
		(= (dummy_1_value d1_3) 56.0)
		(= (dummy_1_value d1_4) 124.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) -14.0)
		(= (dummy_2_value d2_2) -12.0)
		(= (dummy_2_value d2_3) 10.0)
		(= (dummy_2_value d2_4) 14.0)

        (= (dummy_3_value d3_0) -1348.0)
		(= (dummy_3_value d3_1) -777.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

