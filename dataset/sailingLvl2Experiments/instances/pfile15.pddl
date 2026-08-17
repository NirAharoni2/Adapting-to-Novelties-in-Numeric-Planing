;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 0.0)
		(= (y b0) 4.0)
		(= (x b1) -2.0)
		(= (y b1) 8.0)

		(= (d p0) -41.0)
		(= (d p1) -119.0)

        (= (dummy_1_d d1_0) -0.0)
		(= (dummy_1_d d1_1) 92.0)
		(= (dummy_1_d d1_2) 34.0)
		(= (dummy_1_d d1_3) -14.0)

        (= (dummy_2_d d2_0) -11.0)
		(= (dummy_2_d d2_1) -3.0)
		(= (dummy_2_d d2_2) -1.0)
		(= (dummy_2_d d2_3) -6.0)

        (= (dummy_3_d d3_0) 225.0)
		(= (dummy_3_d d3_1) -1376.0)
		(= (dummy_3_d d3_2) -1495.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

