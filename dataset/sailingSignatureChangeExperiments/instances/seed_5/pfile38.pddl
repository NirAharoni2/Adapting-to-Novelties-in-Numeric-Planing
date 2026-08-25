;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -5.0)
		(= (x b1) -9.0)
		(= (y b1) 9.0)

		(= (d p0) 68.0)

        (= (engine_value e0) 5.22)
		(= (engine_value e1) 5.61)

        (= (dummy_1_value d1_0) -147.0)

        (= (dummy_2_value d2_0) -7.0)
		(= (dummy_2_value d2_1) 14.0)

        (= (dummy_3_value d3_0) 1251.0)
		(= (dummy_3_value d3_1) 1413.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

