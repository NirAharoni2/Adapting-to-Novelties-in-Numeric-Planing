;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -9.0)
		(= (x b1) -3.0)
		(= (y b1) 0.0)

		(= (d p0) 88.0)
		(= (d p1) -49.0)

        (= (dummy_1_d d1_0) -3.0)
		(= (dummy_1_d d1_1) -47.0)

        (= (dummy_2_d d2_0) -5.0)
		(= (dummy_2_d d2_1) -13.0)

        (= (dummy_3_d d3_0) -1401.0)
		(= (dummy_3_d d3_1) 893.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

