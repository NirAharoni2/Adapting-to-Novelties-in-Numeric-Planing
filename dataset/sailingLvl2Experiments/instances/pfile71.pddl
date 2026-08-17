;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 4.0)
		(= (x b1) 6.0)
		(= (y b1) -2.0)

		(= (d p0) -9.0)
		(= (d p1) -6.0)

        (= (dummy_1_d d1_0) -58.0)
		(= (dummy_1_d d1_1) -148.0)
		(= (dummy_1_d d1_2) 118.0)

        (= (dummy_2_d d2_0) -6.0)
		(= (dummy_2_d d2_1) -14.0)

        (= (dummy_3_d d3_0) 176.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

