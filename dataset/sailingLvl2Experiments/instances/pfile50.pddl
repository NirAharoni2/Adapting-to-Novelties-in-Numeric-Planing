;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 0.0)
		(= (x b1) -6.0)
		(= (y b1) -7.0)

		(= (d p0) 31.0)
		(= (d p1) 6.0)

        (= (dummy_1_d d1_0) 113.0)
		(= (dummy_1_d d1_1) 87.0)
		(= (dummy_1_d d1_2) -115.0)

        (= (dummy_2_d d2_0) -5.0)
		(= (dummy_2_d d2_1) -6.0)

        (= (dummy_3_d d3_0) 1013.0)
		(= (dummy_3_d d3_1) -1267.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

