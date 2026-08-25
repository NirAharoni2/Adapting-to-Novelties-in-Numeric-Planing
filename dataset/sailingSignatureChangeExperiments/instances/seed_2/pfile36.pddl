;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -8.0)
		(= (x b1) -8.0)
		(= (y b1) -5.0)

		(= (d p0) -77.0)

        (= (engine_value e0) 4.37)
		(= (engine_value e1) 7.26)

        (= (dummy_1_value d1_0) -67.0)
		(= (dummy_1_value d1_1) -63.0)
		(= (dummy_1_value d1_2) 106.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) 10.0)

        (= (dummy_3_value d3_0) 1402.0)
		(= (dummy_3_value d3_1) 1069.0)
		(= (dummy_3_value d3_2) -1492.0)
		(= (dummy_3_value d3_3) -743.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

