;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -9.0)
		(= (x b1) 5.0)
		(= (y b1) 7.0)

		(= (d p0) -76.0)
		(= (d p1) 0.0)

        (= (dummy_1_d d1_0) -30.0)

        (= (dummy_2_d d2_0) -6.0)
		(= (dummy_2_d d2_1) -5.0)
		(= (dummy_2_d d2_2) -1.0)
		(= (dummy_2_d d2_3) -12.0)

        (= (dummy_3_d d3_0) -1229.0)
		(= (dummy_3_d d3_1) -162.0)
		(= (dummy_3_d d3_2) 841.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

