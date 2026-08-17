;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -6.0)
		(= (x b1) -10.0)
		(= (y b1) -10.0)

		(= (d p0) -32.0)
		(= (d p1) -109.0)

        (= (dummy_1_d d1_0) 1.0)

        (= (dummy_2_d d2_0) 6.0)
		(= (dummy_2_d d2_1) -1.0)
		(= (dummy_2_d d2_2) -4.0)
		(= (dummy_2_d d2_3) -10.0)

        (= (dummy_3_d d3_0) -1039.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

