;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -4.0)
		(= (x b1) 8.0)
		(= (y b1) 8.0)

		(= (d p0) 138.0)

        (= (engine_value e0) 5.23)
		(= (engine_value e1) 2.79)

        (= (dummy_1_value d1_0) 104.0)
		(= (dummy_1_value d1_1) 124.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -8.0)
		(= (dummy_2_value d2_2) -14.0)
		(= (dummy_2_value d2_3) 12.0)

        (= (dummy_3_value d3_0) 1392.0)
		(= (dummy_3_value d3_1) 896.0)
		(= (dummy_3_value d3_2) 1348.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

