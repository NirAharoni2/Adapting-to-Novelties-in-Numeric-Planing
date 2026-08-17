;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -7.0)
		(= (x b1) 9.0)
		(= (y b1) 5.0)

		(= (d p0) 56.0)
		(= (d p1) 113.0)

        (= (dummy_1_d d1_0) -48.0)

        (= (dummy_2_d d2_0) 10.0)
		(= (dummy_2_d d2_1) -4.0)

        (= (dummy_3_d d3_0) -347.0)
		(= (dummy_3_d d3_1) 696.0)
		(= (dummy_3_d d3_2) -574.0)
		(= (dummy_3_d d3_3) -1368.0)
		(= (dummy_3_d d3_4) 1214.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

