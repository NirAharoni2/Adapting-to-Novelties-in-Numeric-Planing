;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -7.0)
		(= (x b1) -4.0)
		(= (y b1) -5.0)

		(= (d p0) 31.0)
		(= (d p1) -79.0)

        (= (dummy_1_d d1_0) -72.0)

        (= (dummy_2_d d2_0) -1.0)

        (= (dummy_3_d d3_0) 93.0)
		(= (dummy_3_d d3_1) -1469.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

