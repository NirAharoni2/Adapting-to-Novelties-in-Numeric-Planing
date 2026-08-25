;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 8.0)
		(= (x b1) -6.0)
		(= (y b1) 3.0)

		(= (d p0) 69.0)

        (= (engine_value e0) 5.94)
		(= (engine_value e1) 6.19)

        (= (dummy_1_value d1_0) 125.0)
		(= (dummy_1_value d1_1) -51.0)

        (= (dummy_2_value d2_0) -9.0)
		(= (dummy_2_value d2_1) 8.0)
		(= (dummy_2_value d2_2) 15.0)

        (= (dummy_3_value d3_0) -684.0)
		(= (dummy_3_value d3_1) 1017.0)
		(= (dummy_3_value d3_2) 1353.0)
		(= (dummy_3_value d3_3) -989.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

