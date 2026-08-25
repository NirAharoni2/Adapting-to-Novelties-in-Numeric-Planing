;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) -8.0)
		(= (x b1) 6.0)
		(= (y b1) -4.0)

		(= (d p0) -74.0)

        (= (engine_value e0) 7.53)
		(= (engine_value e1) 2.75)

        (= (dummy_1_value d1_0) -149.0)
		(= (dummy_1_value d1_1) 146.0)
		(= (dummy_1_value d1_2) -53.0)
		(= (dummy_1_value d1_3) 121.0)
		(= (dummy_1_value d1_4) -53.0)

        (= (dummy_2_value d2_0) -14.0)

        (= (dummy_3_value d3_0) 1212.0)
		(= (dummy_3_value d3_1) -1060.0)
		(= (dummy_3_value d3_2) 766.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

