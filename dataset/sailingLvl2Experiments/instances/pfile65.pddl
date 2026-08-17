;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 1.0)
		(= (x b1) 8.0)
		(= (y b1) 6.0)

		(= (d p0) 28.0)
		(= (d p1) 54.0)

        (= (dummy_1_d d1_0) 113.0)
		(= (dummy_1_d d1_1) 35.0)
		(= (dummy_1_d d1_2) -119.0)
		(= (dummy_1_d d1_3) -89.0)

        (= (dummy_2_d d2_0) -3.0)
		(= (dummy_2_d d2_1) -1.0)
		(= (dummy_2_d d2_2) -3.0)
		(= (dummy_2_d d2_3) -7.0)

        (= (dummy_3_d d3_0) -255.0)
		(= (dummy_3_d d3_1) -481.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

