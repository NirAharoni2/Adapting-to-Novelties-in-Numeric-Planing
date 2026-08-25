;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 9.0)
		(= (x b1) -4.0)
		(= (y b1) 4.0)

		(= (d p0) 119.0)

        (= (engine_value e0) 5.46)
		(= (engine_value e1) 8.52)

        (= (dummy_1_value d1_0) 64.0)
		(= (dummy_1_value d1_1) 119.0)
		(= (dummy_1_value d1_2) 123.0)
		(= (dummy_1_value d1_3) 94.0)

        (= (dummy_2_value d2_0) 14.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) -11.0)
		(= (dummy_2_value d2_3) 12.0)
		(= (dummy_2_value d2_4) -6.0)

        (= (dummy_3_value d3_0) -900.0)
		(= (dummy_3_value d3_1) 796.0)
		(= (dummy_3_value d3_2) 883.0)
		(= (dummy_3_value d3_3) -913.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

