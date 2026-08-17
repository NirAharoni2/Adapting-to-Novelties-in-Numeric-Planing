;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -2.0)
		(= (y b0) 8.0)
		(= (x b1) -0.0)
		(= (y b1) -5.0)

		(= (d p0) 19.0)
		(= (d p1) 132.0)

        (= (dummy_1_d d1_0) -108.0)
		(= (dummy_1_d d1_1) -89.0)

        (= (dummy_2_d d2_0) -2.0)
		(= (dummy_2_d d2_1) -11.0)
		(= (dummy_2_d d2_2) 3.0)
		(= (dummy_2_d d2_3) -0.0)

        (= (dummy_3_d d3_0) 124.0)
		(= (dummy_3_d d3_1) 1287.0)
		(= (dummy_3_d d3_2) 1436.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

