;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 4.0)
		(= (x b1) -3.0)
		(= (y b1) -2.0)

		(= (d p0) 70.0)
		(= (d p1) -117.0)

        (= (dummy_1_d d1_0) 65.0)
		(= (dummy_1_d d1_1) 59.0)
		(= (dummy_1_d d1_2) -112.0)
		(= (dummy_1_d d1_3) -116.0)

        (= (dummy_2_d d2_0) 10.0)
		(= (dummy_2_d d2_1) -1.0)
		(= (dummy_2_d d2_2) -14.0)
		(= (dummy_2_d d2_3) 14.0)

        (= (dummy_3_d d3_0) -554.0)
		(= (dummy_3_d d3_1) 511.0)
		(= (dummy_3_d d3_2) 1033.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

