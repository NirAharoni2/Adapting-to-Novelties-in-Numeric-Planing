;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -1.0)
		(= (y b0) 6.0)
		(= (x b1) 3.0)
		(= (y b1) -5.0)

		(= (d p0) 74.0)
		(= (d p1) -29.0)

        (= (dummy_1_d d1_0) 43.0)
		(= (dummy_1_d d1_1) 84.0)
		(= (dummy_1_d d1_2) 134.0)

        (= (dummy_2_d d2_0) -3.0)
		(= (dummy_2_d d2_1) -7.0)
		(= (dummy_2_d d2_2) 12.0)
		(= (dummy_2_d d2_3) 5.0)

        (= (dummy_3_d d3_0) 1190.0)
		(= (dummy_3_d d3_1) 741.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

