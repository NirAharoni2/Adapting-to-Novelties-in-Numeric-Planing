;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -7.0)
		(= (x b1) -0.0)
		(= (y b1) -1.0)

		(= (d p0) -6.0)
		(= (d p1) 23.0)

        (= (dummy_1_d d1_0) -47.0)
		(= (dummy_1_d d1_1) 35.0)
		(= (dummy_1_d d1_2) 141.0)
		(= (dummy_1_d d1_3) 138.0)

        (= (dummy_2_d d2_0) -7.0)
		(= (dummy_2_d d2_1) 8.0)

        (= (dummy_3_d d3_0) 308.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

