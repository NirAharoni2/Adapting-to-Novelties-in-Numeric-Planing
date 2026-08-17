;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -3.0)
		(= (x b1) 9.0)
		(= (y b1) 5.0)

		(= (d p0) 140.0)
		(= (d p1) 129.0)

        (= (dummy_1_d d1_0) -59.0)
		(= (dummy_1_d d1_1) 105.0)
		(= (dummy_1_d d1_2) -104.0)
		(= (dummy_1_d d1_3) -72.0)
		(= (dummy_1_d d1_4) -144.0)

        (= (dummy_2_d d2_0) 7.0)
		(= (dummy_2_d d2_1) -13.0)
		(= (dummy_2_d d2_2) 2.0)
		(= (dummy_2_d d2_3) 1.0)

        (= (dummy_3_d d3_0) -147.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

