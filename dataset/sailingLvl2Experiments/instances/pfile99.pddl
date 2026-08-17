;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -4.0)
		(= (x b1) 9.0)
		(= (y b1) -8.0)

		(= (d p0) -40.0)
		(= (d p1) -31.0)

        (= (dummy_1_d d1_0) -29.0)
		(= (dummy_1_d d1_1) 144.0)
		(= (dummy_1_d d1_2) 65.0)
		(= (dummy_1_d d1_3) 99.0)

        (= (dummy_2_d d2_0) -5.0)
		(= (dummy_2_d d2_1) -11.0)

        (= (dummy_3_d d3_0) -1088.0)
		(= (dummy_3_d d3_1) 49.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

