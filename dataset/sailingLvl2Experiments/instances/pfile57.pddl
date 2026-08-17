;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 8.0)
		(= (x b1) -8.0)
		(= (y b1) -1.0)

		(= (d p0) -63.0)
		(= (d p1) -117.0)

        (= (dummy_1_d d1_0) -148.0)
		(= (dummy_1_d d1_1) -29.0)

        (= (dummy_2_d d2_0) -0.0)
		(= (dummy_2_d d2_1) 0.0)

        (= (dummy_3_d d3_0) 181.0)
		(= (dummy_3_d d3_1) -375.0)
		(= (dummy_3_d d3_2) 199.0)
		(= (dummy_3_d d3_3) -553.0)
		(= (dummy_3_d d3_4) -14.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

