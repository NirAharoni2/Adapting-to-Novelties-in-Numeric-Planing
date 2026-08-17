;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 5.0)
		(= (x b1) 4.0)
		(= (y b1) 6.0)

		(= (d p0) 125.0)
		(= (d p1) 92.0)

        (= (dummy_1_d d1_0) 117.0)
		(= (dummy_1_d d1_1) -112.0)
		(= (dummy_1_d d1_2) -25.0)

        (= (dummy_2_d d2_0) -6.0)
		(= (dummy_2_d d2_1) 8.0)
		(= (dummy_2_d d2_2) -3.0)
		(= (dummy_2_d d2_3) -5.0)
		(= (dummy_2_d d2_4) 7.0)

        (= (dummy_3_d d3_0) 87.0)
		(= (dummy_3_d d3_1) 908.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

