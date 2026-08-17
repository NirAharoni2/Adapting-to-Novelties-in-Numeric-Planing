;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 1.0)
		(= (x b1) -9.0)
		(= (y b1) 3.0)

		(= (d p0) 2.0)
		(= (d p1) 44.0)

        (= (dummy_1_d d1_0) 66.0)

        (= (dummy_2_d d2_0) 4.0)
		(= (dummy_2_d d2_1) -12.0)
		(= (dummy_2_d d2_2) 12.0)

        (= (dummy_3_d d3_0) 54.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

