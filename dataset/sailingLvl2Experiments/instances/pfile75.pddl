;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) 7.0)
		(= (x b1) 4.0)
		(= (y b1) -8.0)

		(= (d p0) 9.0)
		(= (d p1) 13.0)

        (= (dummy_1_d d1_0) -59.0)
		(= (dummy_1_d d1_1) -134.0)
		(= (dummy_1_d d1_2) -81.0)
		(= (dummy_1_d d1_3) 51.0)
		(= (dummy_1_d d1_4) 100.0)

        (= (dummy_2_d d2_0) 10.0)
		(= (dummy_2_d d2_1) -8.0)
		(= (dummy_2_d d2_2) 5.0)

        (= (dummy_3_d d3_0) -1139.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

