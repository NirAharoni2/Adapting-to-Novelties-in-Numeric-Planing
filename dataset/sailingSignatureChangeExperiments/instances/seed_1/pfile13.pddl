;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 8.0)
		(= (x b1) 5.0)
		(= (y b1) 8.0)

		(= (d p0) 84.0)

        (= (engine_value e0) 6.09)
		(= (engine_value e1) 8.34)

        (= (dummy_1_value d1_0) -119.0)
		(= (dummy_1_value d1_1) -92.0)
		(= (dummy_1_value d1_2) -76.0)
		(= (dummy_1_value d1_3) -141.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) -11.0)
		(= (dummy_2_value d2_3) 12.0)

        (= (dummy_3_value d3_0) 970.0)
		(= (dummy_3_value d3_1) -831.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

