;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -6.0)
		(= (x b1) 3.0)
		(= (y b1) 2.0)

		(= (d p0) 91.0)
		(= (d p1) -98.0)

        (= (dummy_1_d d1_0) 102.0)
		(= (dummy_1_d d1_1) -63.0)

        (= (dummy_2_d d2_0) 14.0)
		(= (dummy_2_d d2_1) 8.0)

        (= (dummy_3_d d3_0) -558.0)
		(= (dummy_3_d d3_1) -130.0)
		(= (dummy_3_d d3_2) 916.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

