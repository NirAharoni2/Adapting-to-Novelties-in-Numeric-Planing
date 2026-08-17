;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -9.0)
		(= (x b1) 1.0)
		(= (y b1) -1.0)

		(= (d p0) 105.0)
		(= (d p1) 3.0)

        (= (dummy_1_d d1_0) 147.0)

        (= (dummy_2_d d2_0) 10.0)
		(= (dummy_2_d d2_1) -5.0)
		(= (dummy_2_d d2_2) 3.0)

        (= (dummy_3_d d3_0) 502.0)
		(= (dummy_3_d d3_1) -96.0)
		(= (dummy_3_d d3_2) -109.0)
		(= (dummy_3_d d3_3) -99.0)
		(= (dummy_3_d d3_4) 1306.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

