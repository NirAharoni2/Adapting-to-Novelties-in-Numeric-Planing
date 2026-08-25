;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)

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
		(= (x b0) 7.0)
		(= (y b0) -5.0)
		(= (x b1) -6.0)
		(= (y b1) -4.0)

		(= (d p0) 114.0)

        (= (engine_value e0) 9.52)
		(= (engine_value e1) 8.84)

        (= (dummy_1_value d1_0) 123.0)

        (= (dummy_2_value d2_0) 13.0)

        (= (dummy_3_value d3_0) 624.0)
		(= (dummy_3_value d3_1) -640.0)
		(= (dummy_3_value d3_2) -697.0)
		(= (dummy_3_value d3_3) -933.0)
		(= (dummy_3_value d3_4) -1485.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

