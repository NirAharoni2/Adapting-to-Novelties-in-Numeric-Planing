;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -7.0)
		(= (x b1) 5.0)
		(= (y b1) 10.0)

		(= (d p0) 66.0)

        (= (engine_value e0) 9.35)
		(= (engine_value e1) 9.38)

        (= (dummy_1_value d1_0) 46.0)
		(= (dummy_1_value d1_1) -119.0)
		(= (dummy_1_value d1_2) 90.0)

        (= (dummy_2_value d2_0) -8.0)
		(= (dummy_2_value d2_1) 11.0)
		(= (dummy_2_value d2_2) 10.0)
		(= (dummy_2_value d2_3) 5.0)
		(= (dummy_2_value d2_4) -14.0)

        (= (dummy_3_value d3_0) -700.0)
		(= (dummy_3_value d3_1) -1144.0)
		(= (dummy_3_value d3_2) -883.0)
		(= (dummy_3_value d3_3) -827.0)
		(= (dummy_3_value d3_4) -497.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

