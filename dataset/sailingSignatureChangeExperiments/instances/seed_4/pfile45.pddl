;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -9.0)
		(= (x b1) -3.0)
		(= (y b1) -6.0)

		(= (d p0) 77.0)

        (= (engine_value e0) 4.33)
		(= (engine_value e1) 3.7)

        (= (dummy_1_value d1_0) -89.0)
		(= (dummy_1_value d1_1) 68.0)
		(= (dummy_1_value d1_2) 98.0)

        (= (dummy_2_value d2_0) 7.0)
		(= (dummy_2_value d2_1) -6.0)
		(= (dummy_2_value d2_2) 12.0)
		(= (dummy_2_value d2_3) -9.0)

        (= (dummy_3_value d3_0) -786.0)
		(= (dummy_3_value d3_1) 962.0)
		(= (dummy_3_value d3_2) -764.0)
		(= (dummy_3_value d3_3) -1114.0)
		(= (dummy_3_value d3_4) -640.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

