;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 8.0)
		(= (x b1) 8.0)
		(= (y b1) 2.0)

		(= (d p0) 6.0)
		(= (d p1) 22.0)

        (= (dummy_1_d d1_0) 77.0)
		(= (dummy_1_d d1_1) -76.0)
		(= (dummy_1_d d1_2) -91.0)
		(= (dummy_1_d d1_3) 98.0)

        (= (dummy_2_d d2_0) -12.0)

        (= (dummy_3_d d3_0) 666.0)
		(= (dummy_3_d d3_1) 1355.0)
		(= (dummy_3_d d3_2) -1376.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

