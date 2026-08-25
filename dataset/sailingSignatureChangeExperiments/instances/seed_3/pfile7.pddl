;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)

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
		(= (x b0) 10.0)
		(= (y b0) 3.0)
		(= (x b1) -5.0)
		(= (y b1) 10.0)

		(= (d p0) 138.0)

        (= (engine_value e0) 8.89)
		(= (engine_value e1) 8.86)

        (= (dummy_1_value d1_0) 58.0)
		(= (dummy_1_value d1_1) -146.0)
		(= (dummy_1_value d1_2) 99.0)
		(= (dummy_1_value d1_3) -57.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) -14.0)
		(= (dummy_2_value d2_2) 7.0)
		(= (dummy_2_value d2_3) -9.0)
		(= (dummy_2_value d2_4) -5.0)

        (= (dummy_3_value d3_0) -1368.0)
		(= (dummy_3_value d3_1) 1018.0)
		(= (dummy_3_value d3_2) 514.0)
		(= (dummy_3_value d3_3) -1372.0)
		(= (dummy_3_value d3_4) 575.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

