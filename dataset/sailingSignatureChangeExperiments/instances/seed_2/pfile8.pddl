;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -7.0)
		(= (x b1) -4.0)
		(= (y b1) -6.0)

		(= (d p0) -50.0)

        (= (engine_value e0) 8.43)
		(= (engine_value e1) 9.46)

        (= (dummy_1_value d1_0) 76.0)

        (= (dummy_2_value d2_0) -10.0)

        (= (dummy_3_value d3_0) -1051.0)
		(= (dummy_3_value d3_1) 1415.0)
		(= (dummy_3_value d3_2) 1309.0)
		(= (dummy_3_value d3_3) -1126.0)
		(= (dummy_3_value d3_4) 604.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

