;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 4.0)
		(= (x b1) 6.0)
		(= (y b1) 3.0)

		(= (d p0) 109.0)
		(= (d p1) 42.0)

        (= (dummy_1_d d1_0) 72.0)
		(= (dummy_1_d d1_1) 122.0)

        (= (dummy_2_d d2_0) 4.0)
		(= (dummy_2_d d2_1) 4.0)
		(= (dummy_2_d d2_2) 9.0)
		(= (dummy_2_d d2_3) -4.0)

        (= (dummy_3_d d3_0) -782.0)
		(= (dummy_3_d d3_1) 990.0)
		(= (dummy_3_d d3_2) 1343.0)
		(= (dummy_3_d d3_3) -59.0)
		(= (dummy_3_d d3_4) 1171.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

