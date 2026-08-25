;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 6.0)
		(= (x b1) -6.0)
		(= (y b1) 10.0)

		(= (d p0) 95.0)

        (= (engine_value e0) 3.39)
		(= (engine_value e1) 8.76)

        (= (dummy_1_value d1_0) 116.0)

        (= (dummy_2_value d2_0) -8.0)

        (= (dummy_3_value d3_0) 1216.0)
		(= (dummy_3_value d3_1) 651.0)
		(= (dummy_3_value d3_2) 1192.0)
		(= (dummy_3_value d3_3) 1281.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

