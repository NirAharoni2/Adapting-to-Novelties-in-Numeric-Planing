;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 2.0)
		(= (x b1) 7.0)
		(= (y b1) -5.0)

		(= (d p0) 133.0)
		(= (d p1) 43.0)

        (= (dummy_1_d d1_0) -113.0)
		(= (dummy_1_d d1_1) 78.0)
		(= (dummy_1_d d1_2) -122.0)

        (= (dummy_2_d d2_0) 2.0)
		(= (dummy_2_d d2_1) 0.0)

        (= (dummy_3_d d3_0) 107.0)
		(= (dummy_3_d d3_1) 1004.0)
		(= (dummy_3_d d3_2) 496.0)
		(= (dummy_3_d d3_3) 1006.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

