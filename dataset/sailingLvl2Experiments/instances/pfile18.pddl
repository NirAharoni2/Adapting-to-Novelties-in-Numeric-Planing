;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -0.0)
		(= (y b0) -2.0)
		(= (x b1) -5.0)
		(= (y b1) 1.0)

		(= (d p0) 105.0)
		(= (d p1) -81.0)

        (= (dummy_1_d d1_0) 55.0)
		(= (dummy_1_d d1_1) 64.0)
		(= (dummy_1_d d1_2) 53.0)

        (= (dummy_2_d d2_0) 8.0)
		(= (dummy_2_d d2_1) 7.0)
		(= (dummy_2_d d2_2) 8.0)

        (= (dummy_3_d d3_0) -97.0)
		(= (dummy_3_d d3_1) -1182.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

