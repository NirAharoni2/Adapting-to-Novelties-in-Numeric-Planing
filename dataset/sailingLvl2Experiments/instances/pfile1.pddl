;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 4.0)
		(= (x b1) -10.0)
		(= (y b1) -10.0)

		(= (d p0) 11.0)
		(= (d p1) 134.0)

        (= (dummy_1_d d1_0) 132.0)
		(= (dummy_1_d d1_1) -105.0)
		(= (dummy_1_d d1_2) -16.0)
		(= (dummy_1_d d1_3) -58.0)
		(= (dummy_1_d d1_4) 14.0)

        (= (dummy_2_d d2_0) 5.0)
		(= (dummy_2_d d2_1) -14.0)
		(= (dummy_2_d d2_2) -7.0)

        (= (dummy_3_d d3_0) 337.0)
		(= (dummy_3_d d3_1) 1281.0)
		(= (dummy_3_d d3_2) 166.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

