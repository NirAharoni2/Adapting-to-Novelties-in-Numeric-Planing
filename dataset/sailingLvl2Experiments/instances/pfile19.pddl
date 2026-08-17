;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -1.0)
		(= (y b0) -7.0)
		(= (x b1) -9.0)
		(= (y b1) -7.0)

		(= (d p0) -18.0)
		(= (d p1) -39.0)

        (= (dummy_1_d d1_0) 30.0)
		(= (dummy_1_d d1_1) 15.0)
		(= (dummy_1_d d1_2) -27.0)

        (= (dummy_2_d d2_0) -10.0)
		(= (dummy_2_d d2_1) 15.0)
		(= (dummy_2_d d2_2) -15.0)

        (= (dummy_3_d d3_0) 101.0)
		(= (dummy_3_d d3_1) -1041.0)
		(= (dummy_3_d d3_2) -1.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

