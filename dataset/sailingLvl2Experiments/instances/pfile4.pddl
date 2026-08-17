;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) 6.0)
		(= (x b1) -6.0)
		(= (y b1) 9.0)

		(= (d p0) 116.0)
		(= (d p1) -69.0)

        (= (dummy_1_d d1_0) 101.0)
		(= (dummy_1_d d1_1) -128.0)

        (= (dummy_2_d d2_0) 12.0)
		(= (dummy_2_d d2_1) -10.0)
		(= (dummy_2_d d2_2) -3.0)

        (= (dummy_3_d d3_0) 513.0)
		(= (dummy_3_d d3_1) -17.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

