;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 1.0)
		(= (y b0) -1.0)
		(= (x b1) 6.0)
		(= (y b1) -6.0)

		(= (d p0) 92.0)
		(= (d p1) 24.0)

        (= (dummy_1_d d1_0) 73.0)

        (= (dummy_2_d d2_0) -12.0)
		(= (dummy_2_d d2_1) -6.0)
		(= (dummy_2_d d2_2) -13.0)
		(= (dummy_2_d d2_3) -6.0)

        (= (dummy_3_d d3_0) 674.0)
		(= (dummy_3_d d3_1) -1058.0)
		(= (dummy_3_d d3_2) -894.0)
		(= (dummy_3_d d3_3) -402.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

