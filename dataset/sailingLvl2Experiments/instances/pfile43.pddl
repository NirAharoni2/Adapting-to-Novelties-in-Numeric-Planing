;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 3.0)
		(= (x b1) -6.0)
		(= (y b1) -6.0)

		(= (d p0) 22.0)
		(= (d p1) 82.0)

        (= (dummy_1_d d1_0) 77.0)
		(= (dummy_1_d d1_1) 28.0)
		(= (dummy_1_d d1_2) -130.0)

        (= (dummy_2_d d2_0) -4.0)
		(= (dummy_2_d d2_1) -0.0)
		(= (dummy_2_d d2_2) -7.0)

        (= (dummy_3_d d3_0) 71.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

