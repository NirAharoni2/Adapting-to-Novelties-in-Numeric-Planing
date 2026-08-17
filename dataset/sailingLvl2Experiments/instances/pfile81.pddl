;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -2.0)
		(= (y b0) -8.0)
		(= (x b1) -5.0)
		(= (y b1) 9.0)

		(= (d p0) 137.0)
		(= (d p1) 145.0)

        (= (dummy_1_d d1_0) -44.0)
		(= (dummy_1_d d1_1) -109.0)
		(= (dummy_1_d d1_2) 26.0)
		(= (dummy_1_d d1_3) 96.0)

        (= (dummy_2_d d2_0) -10.0)
		(= (dummy_2_d d2_1) 11.0)
		(= (dummy_2_d d2_2) 3.0)

        (= (dummy_3_d d3_0) -504.0)
		(= (dummy_3_d d3_1) -835.0)
		(= (dummy_3_d d3_2) 1118.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

