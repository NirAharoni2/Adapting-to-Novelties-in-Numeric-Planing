;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -10.0)
		(= (x b1) -3.0)
		(= (y b1) -4.0)

		(= (d p0) -60.0)

        (= (engine_value e0) 5.8)
		(= (engine_value e1) 2.52)

        (= (dummy_1_value d1_0) -147.0)
		(= (dummy_1_value d1_1) 102.0)
		(= (dummy_1_value d1_2) -93.0)
		(= (dummy_1_value d1_3) -65.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) -11.0)
		(= (dummy_2_value d2_2) -9.0)

        (= (dummy_3_value d3_0) -1010.0)
		(= (dummy_3_value d3_1) 1097.0)
		(= (dummy_3_value d3_2) 804.0)
		(= (dummy_3_value d3_3) 864.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

