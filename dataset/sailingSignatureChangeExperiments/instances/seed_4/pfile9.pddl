;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 10.0)
		(= (x b1) -7.0)
		(= (y b1) 8.0)

		(= (d p0) 75.0)

        (= (engine_value e0) 9.52)
		(= (engine_value e1) 3.58)

        (= (dummy_1_value d1_0) 116.0)
		(= (dummy_1_value d1_1) 53.0)
		(= (dummy_1_value d1_2) 140.0)
		(= (dummy_1_value d1_3) -111.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) 10.0)
		(= (dummy_2_value d2_2) 5.0)
		(= (dummy_2_value d2_3) -6.0)
		(= (dummy_2_value d2_4) -13.0)

        (= (dummy_3_value d3_0) 1144.0)
		(= (dummy_3_value d3_1) 531.0)
		(= (dummy_3_value d3_2) 1486.0)
		(= (dummy_3_value d3_3) -997.0)
		(= (dummy_3_value d3_4) 683.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

