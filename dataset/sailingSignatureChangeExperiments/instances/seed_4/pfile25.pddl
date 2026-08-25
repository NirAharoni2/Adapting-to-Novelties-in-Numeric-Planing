;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 7.0)
		(= (x b1) 6.0)
		(= (y b1) 7.0)

		(= (d p0) -150.0)

        (= (engine_value e0) 3.86)
		(= (engine_value e1) 4.72)

        (= (dummy_1_value d1_0) -116.0)
		(= (dummy_1_value d1_1) -126.0)
		(= (dummy_1_value d1_2) 115.0)
		(= (dummy_1_value d1_3) -138.0)
		(= (dummy_1_value d1_4) 70.0)

        (= (dummy_2_value d2_0) -9.0)

        (= (dummy_3_value d3_0) 621.0)
		(= (dummy_3_value d3_1) -604.0)
		(= (dummy_3_value d3_2) 650.0)
		(= (dummy_3_value d3_3) 976.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

