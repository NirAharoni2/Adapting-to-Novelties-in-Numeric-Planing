;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -4.0)
		(= (x b1) 10.0)
		(= (y b1) 4.0)

		(= (d p0) -106.0)

        (= (engine_value e0) 7.94)
		(= (engine_value e1) 4.48)

        (= (dummy_1_value d1_0) 124.0)
		(= (dummy_1_value d1_1) -134.0)

        (= (dummy_2_value d2_0) -9.0)

        (= (dummy_3_value d3_0) -480.0)
		(= (dummy_3_value d3_1) -1062.0)
		(= (dummy_3_value d3_2) -804.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

