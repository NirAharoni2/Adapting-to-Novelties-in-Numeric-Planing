;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 5.0)
		(= (x b1) 8.0)
		(= (y b1) 4.0)

		(= (d p0) 3.0)
		(= (d p1) -129.0)

        (= (dummy_1_d d1_0) -5.0)
		(= (dummy_1_d d1_1) 111.0)
		(= (dummy_1_d d1_2) 131.0)
		(= (dummy_1_d d1_3) -47.0)

        (= (dummy_2_d d2_0) -2.0)
		(= (dummy_2_d d2_1) 4.0)

        (= (dummy_3_d d3_0) 833.0)
		(= (dummy_3_d d3_1) -1131.0)
		(= (dummy_3_d d3_2) -403.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

