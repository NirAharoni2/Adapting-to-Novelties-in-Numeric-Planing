;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) -3.0)
		(= (x b1) 8.0)
		(= (y b1) 7.0)

		(= (d p0) -123.0)

        (= (engine_value e0) 6.67)
		(= (engine_value e1) 2.16)

        (= (dummy_1_value d1_0) 116.0)
		(= (dummy_1_value d1_1) -126.0)
		(= (dummy_1_value d1_2) -57.0)
		(= (dummy_1_value d1_3) -122.0)

        (= (dummy_2_value d2_0) 9.0)
		(= (dummy_2_value d2_1) -14.0)

        (= (dummy_3_value d3_0) 606.0)
		(= (dummy_3_value d3_1) -647.0)
		(= (dummy_3_value d3_2) -882.0)
		(= (dummy_3_value d3_3) -489.0)
		(= (dummy_3_value d3_4) -1278.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

