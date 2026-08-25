;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -7.0)
		(= (x b1) 5.0)
		(= (y b1) -10.0)

		(= (d p0) 138.0)

        (= (engine_value e0) 6.82)
		(= (engine_value e1) 6.35)

        (= (dummy_1_value d1_0) -109.0)
		(= (dummy_1_value d1_1) -126.0)

        (= (dummy_2_value d2_0) -11.0)
		(= (dummy_2_value d2_1) -5.0)

        (= (dummy_3_value d3_0) -1426.0)
		(= (dummy_3_value d3_1) -762.0)
		(= (dummy_3_value d3_2) -1469.0)
		(= (dummy_3_value d3_3) -819.0)
		(= (dummy_3_value d3_4) -1247.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

