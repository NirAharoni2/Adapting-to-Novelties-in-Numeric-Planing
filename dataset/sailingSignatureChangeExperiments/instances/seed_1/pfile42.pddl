;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -8.0)
		(= (x b1) 7.0)
		(= (y b1) 10.0)

		(= (d p0) -145.0)

        (= (engine_value e0) 2.35)
		(= (engine_value e1) 6.88)

        (= (dummy_1_value d1_0) 135.0)
		(= (dummy_1_value d1_1) 94.0)
		(= (dummy_1_value d1_2) 52.0)
		(= (dummy_1_value d1_3) 104.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) 11.0)

        (= (dummy_3_value d3_0) -1219.0)
		(= (dummy_3_value d3_1) -491.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

