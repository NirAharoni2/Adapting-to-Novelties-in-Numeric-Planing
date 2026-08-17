;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 9.0)
		(= (x b1) -3.0)
		(= (y b1) -8.0)

		(= (d p0) 68.0)
		(= (d p1) 67.0)

        (= (dummy_1_d d1_0) -98.0)
		(= (dummy_1_d d1_1) -31.0)
		(= (dummy_1_d d1_2) -119.0)
		(= (dummy_1_d d1_3) -12.0)

        (= (dummy_2_d d2_0) -8.0)
		(= (dummy_2_d d2_1) 0.0)

        (= (dummy_3_d d3_0) 318.0)
		(= (dummy_3_d d3_1) -655.0)
		(= (dummy_3_d d3_2) -422.0)
		(= (dummy_3_d d3_3) 881.0)
		(= (dummy_3_d d3_4) -103.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

