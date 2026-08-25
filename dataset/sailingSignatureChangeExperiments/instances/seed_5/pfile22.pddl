;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -8.0)
		(= (x b1) 6.0)
		(= (y b1) 8.0)

		(= (d p0) -71.0)

        (= (engine_value e0) 6.23)
		(= (engine_value e1) 3.66)

        (= (dummy_1_value d1_0) 79.0)
		(= (dummy_1_value d1_1) -61.0)
		(= (dummy_1_value d1_2) 117.0)
		(= (dummy_1_value d1_3) 71.0)
		(= (dummy_1_value d1_4) -119.0)

        (= (dummy_2_value d2_0) 13.0)
		(= (dummy_2_value d2_1) -5.0)
		(= (dummy_2_value d2_2) -11.0)
		(= (dummy_2_value d2_3) -8.0)
		(= (dummy_2_value d2_4) 11.0)

        (= (dummy_3_value d3_0) 1023.0)
		(= (dummy_3_value d3_1) -1258.0)
		(= (dummy_3_value d3_2) -874.0)
		(= (dummy_3_value d3_3) -1061.0)
		(= (dummy_3_value d3_4) -566.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

