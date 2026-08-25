;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 4.0)
		(= (x b1) -5.0)
		(= (y b1) -5.0)

		(= (d p0) -75.0)

        (= (engine_value e0) 7.75)
		(= (engine_value e1) 4.44)

        (= (dummy_1_value d1_0) -108.0)
		(= (dummy_1_value d1_1) -140.0)

        (= (dummy_2_value d2_0) -14.0)
		(= (dummy_2_value d2_1) 14.0)
		(= (dummy_2_value d2_2) -15.0)
		(= (dummy_2_value d2_3) 13.0)
		(= (dummy_2_value d2_4) 11.0)

        (= (dummy_3_value d3_0) -620.0)
		(= (dummy_3_value d3_1) -773.0)
		(= (dummy_3_value d3_2) -1080.0)
		(= (dummy_3_value d3_3) -1103.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

