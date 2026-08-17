;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 5.0)
		(= (x b1) 1.0)
		(= (y b1) 5.0)

		(= (d p0) 5.0)
		(= (d p1) -35.0)

        (= (dummy_1_d d1_0) -103.0)
		(= (dummy_1_d d1_1) 96.0)

        (= (dummy_2_d d2_0) 13.0)

        (= (dummy_3_d d3_0) -1089.0)
		(= (dummy_3_d d3_1) -923.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

