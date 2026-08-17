;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -4.0)
		(= (x b1) 1.0)
		(= (y b1) 6.0)

		(= (d p0) -10.0)
		(= (d p1) 63.0)

        (= (dummy_1_d d1_0) 9.0)

        (= (dummy_2_d d2_0) 3.0)
		(= (dummy_2_d d2_1) 3.0)

        (= (dummy_3_d d3_0) 369.0)
		(= (dummy_3_d d3_1) 523.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

