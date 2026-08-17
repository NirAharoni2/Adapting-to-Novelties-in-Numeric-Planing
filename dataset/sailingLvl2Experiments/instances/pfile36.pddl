;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) -6.0)
		(= (x b1) 7.0)
		(= (y b1) -5.0)

		(= (d p0) -67.0)
		(= (d p1) -130.0)

        (= (dummy_1_d d1_0) -3.0)
		(= (dummy_1_d d1_1) 1.0)
		(= (dummy_1_d d1_2) 65.0)
		(= (dummy_1_d d1_3) 57.0)
		(= (dummy_1_d d1_4) 142.0)

        (= (dummy_2_d d2_0) 1.0)
		(= (dummy_2_d d2_1) -7.0)
		(= (dummy_2_d d2_2) -3.0)
		(= (dummy_2_d d2_3) 5.0)
		(= (dummy_2_d d2_4) 11.0)

        (= (dummy_3_d d3_0) -444.0)
		(= (dummy_3_d d3_1) -109.0)
		(= (dummy_3_d d3_2) 186.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

