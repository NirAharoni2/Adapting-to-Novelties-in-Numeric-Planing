;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -8.0)
		(= (x b1) -6.0)
		(= (y b1) -8.0)

		(= (d p0) 95.0)

        (= (engine_value e0) 5.23)
		(= (engine_value e1) 2.83)

        (= (dummy_1_value d1_0) -81.0)
		(= (dummy_1_value d1_1) 102.0)

        (= (dummy_2_value d2_0) 12.0)
		(= (dummy_2_value d2_1) 5.0)
		(= (dummy_2_value d2_2) -8.0)

        (= (dummy_3_value d3_0) -541.0)
		(= (dummy_3_value d3_1) -577.0)
		(= (dummy_3_value d3_2) -616.0)
		(= (dummy_3_value d3_3) 802.0)
		(= (dummy_3_value d3_4) 618.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

