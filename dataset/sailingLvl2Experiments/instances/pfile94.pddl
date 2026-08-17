;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -7.0)
		(= (x b1) 3.0)
		(= (y b1) 6.0)

		(= (d p0) -74.0)
		(= (d p1) 72.0)

        (= (dummy_1_d d1_0) 43.0)
		(= (dummy_1_d d1_1) 24.0)

        (= (dummy_2_d d2_0) 4.0)
		(= (dummy_2_d d2_1) -9.0)
		(= (dummy_2_d d2_2) -5.0)
		(= (dummy_2_d d2_3) -11.0)

        (= (dummy_3_d d3_0) -76.0)
		(= (dummy_3_d d3_1) 1381.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

