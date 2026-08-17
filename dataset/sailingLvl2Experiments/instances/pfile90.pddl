;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 2.0)
		(= (y b0) -3.0)
		(= (x b1) -8.0)
		(= (y b1) 8.0)

		(= (d p0) 20.0)
		(= (d p1) 92.0)

        (= (dummy_1_d d1_0) 107.0)
		(= (dummy_1_d d1_1) -106.0)
		(= (dummy_1_d d1_2) 77.0)
		(= (dummy_1_d d1_3) -16.0)
		(= (dummy_1_d d1_4) -4.0)

        (= (dummy_2_d d2_0) -13.0)

        (= (dummy_3_d d3_0) 983.0)
		(= (dummy_3_d d3_1) 1114.0)
		(= (dummy_3_d d3_2) 544.0)
		(= (dummy_3_d d3_3) 1407.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

