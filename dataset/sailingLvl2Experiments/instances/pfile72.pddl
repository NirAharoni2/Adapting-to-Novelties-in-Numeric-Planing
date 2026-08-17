;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 2.0)
		(= (y b0) -8.0)
		(= (x b1) 0.0)
		(= (y b1) -6.0)

		(= (d p0) 76.0)
		(= (d p1) -119.0)

        (= (dummy_1_d d1_0) -7.0)
		(= (dummy_1_d d1_1) -49.0)
		(= (dummy_1_d d1_2) 95.0)

        (= (dummy_2_d d2_0) 12.0)
		(= (dummy_2_d d2_1) -10.0)
		(= (dummy_2_d d2_2) 6.0)
		(= (dummy_2_d d2_3) 11.0)
		(= (dummy_2_d d2_4) 14.0)

        (= (dummy_3_d d3_0) 1276.0)
		(= (dummy_3_d d3_1) 540.0)
		(= (dummy_3_d d3_2) 1104.0)
		(= (dummy_3_d d3_3) 272.0)
		(= (dummy_3_d d3_4) -889.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

