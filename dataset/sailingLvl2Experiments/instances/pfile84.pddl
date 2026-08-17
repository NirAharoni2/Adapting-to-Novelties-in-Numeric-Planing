;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 7.0)
		(= (x b1) -2.0)
		(= (y b1) -6.0)

		(= (d p0) 22.0)
		(= (d p1) 16.0)

        (= (dummy_1_d d1_0) 7.0)
		(= (dummy_1_d d1_1) -24.0)
		(= (dummy_1_d d1_2) 39.0)
		(= (dummy_1_d d1_3) -130.0)

        (= (dummy_2_d d2_0) -14.0)
		(= (dummy_2_d d2_1) -13.0)
		(= (dummy_2_d d2_2) -3.0)
		(= (dummy_2_d d2_3) 12.0)
		(= (dummy_2_d d2_4) 12.0)

        (= (dummy_3_d d3_0) 611.0)
		(= (dummy_3_d d3_1) -1189.0)
		(= (dummy_3_d d3_2) 106.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

