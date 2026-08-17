;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) -8.0)
		(= (x b1) 2.0)
		(= (y b1) -6.0)

		(= (d p0) 102.0)
		(= (d p1) 119.0)

        (= (dummy_1_d d1_0) -54.0)
		(= (dummy_1_d d1_1) 134.0)
		(= (dummy_1_d d1_2) -31.0)

        (= (dummy_2_d d2_0) 9.0)

        (= (dummy_3_d d3_0) -488.0)
		(= (dummy_3_d d3_1) 416.0)
		(= (dummy_3_d d3_2) 1330.0)
		(= (dummy_3_d d3_3) -726.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

