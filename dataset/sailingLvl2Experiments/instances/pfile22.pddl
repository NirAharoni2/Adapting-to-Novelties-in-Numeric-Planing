;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 0.0)
		(= (x b1) -4.0)
		(= (y b1) 1.0)

		(= (d p0) -73.0)
		(= (d p1) -56.0)

        (= (dummy_1_d d1_0) -85.0)
		(= (dummy_1_d d1_1) -107.0)
		(= (dummy_1_d d1_2) 85.0)
		(= (dummy_1_d d1_3) 42.0)

        (= (dummy_2_d d2_0) 10.0)
		(= (dummy_2_d d2_1) -4.0)
		(= (dummy_2_d d2_2) -11.0)

        (= (dummy_3_d d3_0) -1018.0)
		(= (dummy_3_d d3_1) 845.0)
		(= (dummy_3_d d3_2) 1459.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

