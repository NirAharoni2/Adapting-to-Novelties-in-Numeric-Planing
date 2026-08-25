;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 7.0)
		(= (x b1) -6.0)
		(= (y b1) -4.0)

		(= (d p0) 121.0)

        (= (engine_value e0) 6.21)
		(= (engine_value e1) 5.58)

        (= (dummy_1_value d1_0) 135.0)
		(= (dummy_1_value d1_1) 97.0)
		(= (dummy_1_value d1_2) 64.0)
		(= (dummy_1_value d1_3) -102.0)

        (= (dummy_2_value d2_0) 10.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) 8.0)
		(= (dummy_2_value d2_3) -6.0)
		(= (dummy_2_value d2_4) 12.0)

        (= (dummy_3_value d3_0) -1115.0)
		(= (dummy_3_value d3_1) -1201.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

