;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 4.0)
		(= (x b1) -7.0)
		(= (y b1) 8.0)

		(= (d p0) -139.0)
		(= (d p1) -134.0)

        (= (dummy_1_d d1_0) -47.0)
		(= (dummy_1_d d1_1) -81.0)
		(= (dummy_1_d d1_2) 120.0)
		(= (dummy_1_d d1_3) -63.0)
		(= (dummy_1_d d1_4) -143.0)

        (= (dummy_2_d d2_0) -2.0)
		(= (dummy_2_d d2_1) 6.0)
		(= (dummy_2_d d2_2) -7.0)
		(= (dummy_2_d d2_3) -14.0)
		(= (dummy_2_d d2_4) 11.0)

        (= (dummy_3_d d3_0) 807.0)
		(= (dummy_3_d d3_1) 36.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

