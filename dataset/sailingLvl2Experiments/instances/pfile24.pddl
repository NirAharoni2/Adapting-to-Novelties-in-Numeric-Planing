;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 6.0)
		(= (x b1) -8.0)
		(= (y b1) 6.0)

		(= (d p0) -100.0)
		(= (d p1) -97.0)

        (= (dummy_1_d d1_0) 79.0)
		(= (dummy_1_d d1_1) -127.0)
		(= (dummy_1_d d1_2) 149.0)

        (= (dummy_2_d d2_0) -1.0)

        (= (dummy_3_d d3_0) 1034.0)
		(= (dummy_3_d d3_1) 1234.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

