;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -8.0)
		(= (x b1) 6.0)
		(= (y b1) 6.0)

		(= (d p0) 120.0)

        (= (engine_value e0) 9.3)
		(= (engine_value e1) 2.65)

        (= (dummy_1_value d1_0) 121.0)

        (= (dummy_2_value d2_0) 6.0)
		(= (dummy_2_value d2_1) 9.0)
		(= (dummy_2_value d2_2) 14.0)
		(= (dummy_2_value d2_3) -10.0)
		(= (dummy_2_value d2_4) 9.0)

        (= (dummy_3_value d3_0) -1401.0)
		(= (dummy_3_value d3_1) -1273.0)
		(= (dummy_3_value d3_2) 855.0)
		(= (dummy_3_value d3_3) -479.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

