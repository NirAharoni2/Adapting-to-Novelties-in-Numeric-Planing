;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 2.0)
		(= (y b0) -10.0)
		(= (x b1) 1.0)
		(= (y b1) -0.0)

		(= (d p0) 132.0)
		(= (d p1) -0.0)

        (= (dummy_1_d d1_0) -47.0)
		(= (dummy_1_d d1_1) 131.0)

        (= (dummy_2_d d2_0) -14.0)
		(= (dummy_2_d d2_1) 6.0)

        (= (dummy_3_d d3_0) 232.0)
		(= (dummy_3_d d3_1) 108.0)
		(= (dummy_3_d d3_2) 630.0)
		(= (dummy_3_d d3_3) 682.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

