;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 4.0)
		(= (x b1) -3.0)
		(= (y b1) -4.0)

		(= (d p0) -17.0)
		(= (d p1) -101.0)

        (= (dummy_1_d d1_0) 110.0)
		(= (dummy_1_d d1_1) 90.0)

        (= (dummy_2_d d2_0) -9.0)
		(= (dummy_2_d d2_1) -12.0)
		(= (dummy_2_d d2_2) -11.0)

        (= (dummy_3_d d3_0) -308.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

