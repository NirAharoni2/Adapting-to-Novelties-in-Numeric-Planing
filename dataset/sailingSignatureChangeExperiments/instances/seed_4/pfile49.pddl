;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -3.0)
		(= (x b1) 3.0)
		(= (y b1) 8.0)

		(= (d p0) -64.0)

        (= (engine_value e0) 5.8)
		(= (engine_value e1) 7.61)

        (= (dummy_1_value d1_0) 101.0)
		(= (dummy_1_value d1_1) 121.0)
		(= (dummy_1_value d1_2) -105.0)
		(= (dummy_1_value d1_3) -56.0)

        (= (dummy_2_value d2_0) -7.0)
		(= (dummy_2_value d2_1) -9.0)
		(= (dummy_2_value d2_2) -11.0)

        (= (dummy_3_value d3_0) -1053.0)
		(= (dummy_3_value d3_1) -993.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

