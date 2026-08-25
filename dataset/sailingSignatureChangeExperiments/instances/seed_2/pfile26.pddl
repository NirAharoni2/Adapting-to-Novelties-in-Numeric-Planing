;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -8.0)
		(= (x b1) 4.0)
		(= (y b1) -5.0)

		(= (d p0) 63.0)

        (= (engine_value e0) 4.11)
		(= (engine_value e1) 4.5)

        (= (dummy_1_value d1_0) 76.0)
		(= (dummy_1_value d1_1) 147.0)
		(= (dummy_1_value d1_2) -117.0)
		(= (dummy_1_value d1_3) -88.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) -12.0)
		(= (dummy_2_value d2_3) -7.0)

        (= (dummy_3_value d3_0) 1272.0)
		(= (dummy_3_value d3_1) 954.0)
		(= (dummy_3_value d3_2) 697.0)
		(= (dummy_3_value d3_3) 1083.0)
		(= (dummy_3_value d3_4) -1182.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

