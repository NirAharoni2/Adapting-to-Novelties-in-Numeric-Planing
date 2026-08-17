;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 1.0)
		(= (x b1) 7.0)
		(= (y b1) -7.0)

		(= (d p0) -17.0)
		(= (d p1) -135.0)

        (= (dummy_1_d d1_0) 63.0)
		(= (dummy_1_d d1_1) 51.0)
		(= (dummy_1_d d1_2) 82.0)
		(= (dummy_1_d d1_3) -67.0)
		(= (dummy_1_d d1_4) 141.0)

        (= (dummy_2_d d2_0) 9.0)
		(= (dummy_2_d d2_1) 14.0)
		(= (dummy_2_d d2_2) -13.0)
		(= (dummy_2_d d2_3) -6.0)
		(= (dummy_2_d d2_4) -12.0)

        (= (dummy_3_d d3_0) 889.0)
		(= (dummy_3_d d3_1) 884.0)
		(= (dummy_3_d d3_2) 993.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

