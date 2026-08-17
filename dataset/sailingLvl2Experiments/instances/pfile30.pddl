;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -5.0)
		(= (x b1) 0.0)
		(= (y b1) -7.0)

		(= (d p0) -28.0)
		(= (d p1) 84.0)

        (= (dummy_1_d d1_0) -59.0)
		(= (dummy_1_d d1_1) -95.0)
		(= (dummy_1_d d1_2) -64.0)
		(= (dummy_1_d d1_3) -138.0)
		(= (dummy_1_d d1_4) 27.0)

        (= (dummy_2_d d2_0) -4.0)
		(= (dummy_2_d d2_1) -1.0)

        (= (dummy_3_d d3_0) -868.0)
		(= (dummy_3_d d3_1) 1377.0)
		(= (dummy_3_d d3_2) 1073.0)
		(= (dummy_3_d d3_3) -1147.0)
		(= (dummy_3_d d3_4) -667.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

