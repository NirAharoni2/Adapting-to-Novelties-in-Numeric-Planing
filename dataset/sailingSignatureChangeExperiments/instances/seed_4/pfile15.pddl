;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -5.0)
		(= (x b1) -8.0)
		(= (y b1) -7.0)

		(= (d p0) 116.0)

        (= (engine_value e0) 7.13)
		(= (engine_value e1) 6.9)

        (= (dummy_1_value d1_0) -52.0)
		(= (dummy_1_value d1_1) 110.0)
		(= (dummy_1_value d1_2) 143.0)
		(= (dummy_1_value d1_3) -127.0)

        (= (dummy_2_value d2_0) 13.0)
		(= (dummy_2_value d2_1) 5.0)
		(= (dummy_2_value d2_2) 7.0)

        (= (dummy_3_value d3_0) -955.0)
		(= (dummy_3_value d3_1) -663.0)
		(= (dummy_3_value d3_2) -587.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

