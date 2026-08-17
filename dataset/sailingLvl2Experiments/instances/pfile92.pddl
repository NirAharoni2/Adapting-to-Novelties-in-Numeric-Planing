;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 0.0)
		(= (y b0) -4.0)
		(= (x b1) 9.0)
		(= (y b1) -9.0)

		(= (d p0) 9.0)
		(= (d p1) 18.0)

        (= (dummy_1_d d1_0) -45.0)

        (= (dummy_2_d d2_0) 13.0)
		(= (dummy_2_d d2_1) 6.0)

        (= (dummy_3_d d3_0) -1240.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

