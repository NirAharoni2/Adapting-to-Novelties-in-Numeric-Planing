;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -5.0)
		(= (x b1) 5.0)
		(= (y b1) -3.0)

		(= (d p0) 103.0)

        (= (engine_value e0) 6.33)
		(= (engine_value e1) 8.81)

        (= (dummy_1_value d1_0) -108.0)
		(= (dummy_1_value d1_1) -123.0)
		(= (dummy_1_value d1_2) -82.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -11.0)
		(= (dummy_2_value d2_2) -14.0)
		(= (dummy_2_value d2_3) -6.0)
		(= (dummy_2_value d2_4) -11.0)

        (= (dummy_3_value d3_0) 695.0)
		(= (dummy_3_value d3_1) -945.0)
		(= (dummy_3_value d3_2) 1131.0)
		(= (dummy_3_value d3_3) -779.0)
		(= (dummy_3_value d3_4) 700.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

