;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -8.0)
		(= (x b1) -7.0)
		(= (y b1) 9.0)

		(= (d p0) -69.0)
		(= (d p1) -51.0)

        (= (dummy_1_d d1_0) -106.0)
		(= (dummy_1_d d1_1) -120.0)
		(= (dummy_1_d d1_2) 7.0)
		(= (dummy_1_d d1_3) -4.0)
		(= (dummy_1_d d1_4) -92.0)

        (= (dummy_2_d d2_0) -15.0)
		(= (dummy_2_d d2_1) -9.0)

        (= (dummy_3_d d3_0) 1350.0)
		(= (dummy_3_d d3_1) 668.0)
		(= (dummy_3_d d3_2) -963.0)
		(= (dummy_3_d d3_3) 288.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

