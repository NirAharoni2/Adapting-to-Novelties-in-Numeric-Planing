;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 8.0)
		(= (x b1) 3.0)
		(= (y b1) 10.0)

		(= (d p0) 49.0)
		(= (d p1) -46.0)

        (= (dummy_1_d d1_0) -135.0)
		(= (dummy_1_d d1_1) -79.0)
		(= (dummy_1_d d1_2) 78.0)
		(= (dummy_1_d d1_3) 126.0)

        (= (dummy_2_d d2_0) 1.0)
		(= (dummy_2_d d2_1) -6.0)

        (= (dummy_3_d d3_0) 736.0)
		(= (dummy_3_d d3_1) 1034.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

