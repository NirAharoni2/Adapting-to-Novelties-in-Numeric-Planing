;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -9.0)
		(= (x b1) -8.0)
		(= (y b1) -3.0)

		(= (d p0) -62.0)

        (= (engine_value e0) 7.96)
		(= (engine_value e1) 6.74)

        (= (dummy_1_value d1_0) -109.0)
		(= (dummy_1_value d1_1) -83.0)
		(= (dummy_1_value d1_2) 128.0)
		(= (dummy_1_value d1_3) -134.0)
		(= (dummy_1_value d1_4) -89.0)

        (= (dummy_2_value d2_0) -15.0)

        (= (dummy_3_value d3_0) -1260.0)
		(= (dummy_3_value d3_1) -802.0)
		(= (dummy_3_value d3_2) 746.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

