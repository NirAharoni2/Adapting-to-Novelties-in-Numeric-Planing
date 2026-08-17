;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -2.0)
		(= (x b1) -5.0)
		(= (y b1) 1.0)

		(= (d p0) 112.0)
		(= (d p1) 51.0)

        (= (dummy_1_d d1_0) 117.0)
		(= (dummy_1_d d1_1) -129.0)
		(= (dummy_1_d d1_2) -4.0)
		(= (dummy_1_d d1_3) -8.0)

        (= (dummy_2_d d2_0) -2.0)
		(= (dummy_2_d d2_1) -9.0)
		(= (dummy_2_d d2_2) 0.0)
		(= (dummy_2_d d2_3) -7.0)

        (= (dummy_3_d d3_0) 566.0)
		(= (dummy_3_d d3_1) 1191.0)
		(= (dummy_3_d d3_2) -485.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

