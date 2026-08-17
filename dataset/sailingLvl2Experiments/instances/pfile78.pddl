;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 2.0)
		(= (y b0) -10.0)
		(= (x b1) 1.0)
		(= (y b1) 2.0)

		(= (d p0) 60.0)
		(= (d p1) -4.0)

        (= (dummy_1_d d1_0) 31.0)
		(= (dummy_1_d d1_1) -58.0)
		(= (dummy_1_d d1_2) -37.0)

        (= (dummy_2_d d2_0) -15.0)
		(= (dummy_2_d d2_1) -10.0)

        (= (dummy_3_d d3_0) 919.0)
		(= (dummy_3_d d3_1) -949.0)
		(= (dummy_3_d d3_2) 564.0)
		(= (dummy_3_d d3_3) 1248.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

