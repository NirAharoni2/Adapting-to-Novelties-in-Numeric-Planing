;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -3.0)
		(= (x b1) -7.0)
		(= (y b1) 4.0)

		(= (d p0) 58.0)

        (= (engine_value e0) 2.22)
		(= (engine_value e1) 4.81)

        (= (dummy_1_value d1_0) -54.0)
		(= (dummy_1_value d1_1) 125.0)
		(= (dummy_1_value d1_2) -93.0)
		(= (dummy_1_value d1_3) -62.0)

        (= (dummy_2_value d2_0) -12.0)
		(= (dummy_2_value d2_1) 6.0)
		(= (dummy_2_value d2_2) -5.0)

        (= (dummy_3_value d3_0) -1351.0)
		(= (dummy_3_value d3_1) -1236.0)
		(= (dummy_3_value d3_2) -1237.0)
		(= (dummy_3_value d3_3) -1241.0)
		(= (dummy_3_value d3_4) -859.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

