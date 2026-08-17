;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 0.0)
		(= (x b1) -10.0)
		(= (y b1) 10.0)

		(= (d p0) 31.0)
		(= (d p1) -28.0)

        (= (dummy_1_d d1_0) -75.0)

        (= (dummy_2_d d2_0) -5.0)

        (= (dummy_3_d d3_0) 780.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

