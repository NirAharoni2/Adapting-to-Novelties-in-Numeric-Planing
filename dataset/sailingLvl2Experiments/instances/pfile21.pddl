;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -1.0)
		(= (x b1) -1.0)
		(= (y b1) -2.0)

		(= (d p0) -112.0)
		(= (d p1) -130.0)

        (= (dummy_1_d d1_0) 67.0)
		(= (dummy_1_d d1_1) 125.0)
		(= (dummy_1_d d1_2) -58.0)

        (= (dummy_2_d d2_0) 2.0)
		(= (dummy_2_d d2_1) -4.0)
		(= (dummy_2_d d2_2) 4.0)
		(= (dummy_2_d d2_3) -13.0)

        (= (dummy_3_d d3_0) -941.0)
		(= (dummy_3_d d3_1) 1435.0)
		(= (dummy_3_d d3_2) -168.0)
		(= (dummy_3_d d3_3) -708.0)
		(= (dummy_3_d d3_4) -625.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

