;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) 3.0)
		(= (x b1) 10.0)
		(= (y b1) 2.0)

		(= (d p0) -3.0)
		(= (d p1) 57.0)

        (= (dummy_1_d d1_0) 89.0)
		(= (dummy_1_d d1_1) -93.0)
		(= (dummy_1_d d1_2) 23.0)
		(= (dummy_1_d d1_3) -63.0)
		(= (dummy_1_d d1_4) -140.0)

        (= (dummy_2_d d2_0) 5.0)

        (= (dummy_3_d d3_0) 1187.0)
		(= (dummy_3_d d3_1) -1065.0)
		(= (dummy_3_d d3_2) -1300.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

