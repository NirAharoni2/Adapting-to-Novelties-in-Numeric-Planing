;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -9.0)
		(= (x b1) -3.0)
		(= (y b1) 2.0)

		(= (d p0) 103.0)
		(= (d p1) 28.0)

        (= (dummy_1_d d1_0) -93.0)

        (= (dummy_2_d d2_0) -4.0)
		(= (dummy_2_d d2_1) -10.0)

        (= (dummy_3_d d3_0) 1302.0)
		(= (dummy_3_d d3_1) -270.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

