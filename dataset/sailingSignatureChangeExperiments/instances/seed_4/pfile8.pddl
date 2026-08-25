;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 5.0)
		(= (x b1) 5.0)
		(= (y b1) 3.0)

		(= (d p0) -82.0)

        (= (engine_value e0) 2.97)
		(= (engine_value e1) 2.89)

        (= (dummy_1_value d1_0) 108.0)
		(= (dummy_1_value d1_1) 100.0)
		(= (dummy_1_value d1_2) -119.0)
		(= (dummy_1_value d1_3) -131.0)

        (= (dummy_2_value d2_0) 5.0)
		(= (dummy_2_value d2_1) -5.0)
		(= (dummy_2_value d2_2) 14.0)
		(= (dummy_2_value d2_3) 10.0)

        (= (dummy_3_value d3_0) 982.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

