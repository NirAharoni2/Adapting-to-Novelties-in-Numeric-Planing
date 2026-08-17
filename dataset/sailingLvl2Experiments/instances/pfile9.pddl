;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 2.0)
		(= (y b0) 9.0)
		(= (x b1) 9.0)
		(= (y b1) 9.0)

		(= (d p0) 132.0)
		(= (d p1) 8.0)

        (= (dummy_1_d d1_0) -119.0)
		(= (dummy_1_d d1_1) -128.0)
		(= (dummy_1_d d1_2) -146.0)

        (= (dummy_2_d d2_0) 2.0)

        (= (dummy_3_d d3_0) 1253.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

