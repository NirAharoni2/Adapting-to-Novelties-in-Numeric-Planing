;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -1.0)
		(= (x b1) 9.0)
		(= (y b1) -7.0)

		(= (d p0) -68.0)
		(= (d p1) -82.0)

        (= (dummy_1_d d1_0) 87.0)

        (= (dummy_2_d d2_0) -9.0)
		(= (dummy_2_d d2_1) -8.0)
		(= (dummy_2_d d2_2) -5.0)
		(= (dummy_2_d d2_3) 2.0)
		(= (dummy_2_d d2_4) -7.0)

        (= (dummy_3_d d3_0) -99.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

