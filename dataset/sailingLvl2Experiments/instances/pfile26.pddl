;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -6.0)
		(= (x b1) 10.0)
		(= (y b1) 3.0)

		(= (d p0) -57.0)
		(= (d p1) 144.0)

        (= (dummy_1_d d1_0) -98.0)
		(= (dummy_1_d d1_1) -95.0)
		(= (dummy_1_d d1_2) 125.0)
		(= (dummy_1_d d1_3) -138.0)
		(= (dummy_1_d d1_4) 92.0)

        (= (dummy_2_d d2_0) -5.0)
		(= (dummy_2_d d2_1) 0.0)
		(= (dummy_2_d d2_2) -11.0)

        (= (dummy_3_d d3_0) -2.0)
		(= (dummy_3_d d3_1) -1488.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

