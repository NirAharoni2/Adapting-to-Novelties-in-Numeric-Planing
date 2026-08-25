;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -6.0)
		(= (x b1) 6.0)
		(= (y b1) -3.0)

		(= (d p0) -131.0)

        (= (engine_value e0) 2.51)
		(= (engine_value e1) 2.3)

        (= (dummy_1_value d1_0) -129.0)
		(= (dummy_1_value d1_1) -52.0)
		(= (dummy_1_value d1_2) 82.0)

        (= (dummy_2_value d2_0) -12.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) -10.0)
		(= (dummy_2_value d2_3) -8.0)

        (= (dummy_3_value d3_0) -587.0)
		(= (dummy_3_value d3_1) 943.0)
		(= (dummy_3_value d3_2) 566.0)
		(= (dummy_3_value d3_3) 1238.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

