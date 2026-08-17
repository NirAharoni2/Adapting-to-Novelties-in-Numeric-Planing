;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) -10.0)
		(= (x b1) 9.0)
		(= (y b1) -4.0)

		(= (d p0) -31.0)
		(= (d p1) -107.0)

        (= (dummy_1_d d1_0) -16.0)
		(= (dummy_1_d d1_1) -104.0)
		(= (dummy_1_d d1_2) -52.0)

        (= (dummy_2_d d2_0) 11.0)
		(= (dummy_2_d d2_1) -4.0)
		(= (dummy_2_d d2_2) 9.0)
		(= (dummy_2_d d2_3) -9.0)

        (= (dummy_3_d d3_0) 1166.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

